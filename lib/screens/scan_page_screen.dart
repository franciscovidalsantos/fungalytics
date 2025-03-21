import 'dart:convert';
import 'dart:io';
import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:fungalytics/services/kindwise_service.dart';
import 'package:fungalytics/services/mock_kindwise_service.dart';
import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/widgets/suggestions_widget.dart';
import 'package:image_picker/image_picker.dart';

class ScanPageScreen extends StatefulWidget {
  const ScanPageScreen({super.key});
  @override
  State<ScanPageScreen> createState() {
    return _ScanPageScreenState();
  }
}

class _ScanPageScreenState extends State<ScanPageScreen> {
  File? _selectedImage;
  MushroomResponse? _mushroom;
  bool _isLoading = false;
  final _picker = ImagePicker();
  final _kindwiseService =
      MockKindwiseService(); // Switch between the service and its mock version
  final _scrollViewController = ScrollController();
  bool _wasShowButtonClicked = false;

  @override
  void dispose() {
    _scrollViewController.dispose();
    super.dispose();
  }

  // Pick image
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);

        // Reset previous values
        _mushroom = null;
        _wasShowButtonClicked = false;
      });
      _identifyMushroom();
    }
  }

  // Convert image to Base64 and send it to the API
  Future<void> _identifyMushroom() async {
    if (_selectedImage == null) return;

    setState(() => _isLoading = true);

    try {
      final bytes = await _selectedImage!.readAsBytes();
      final base64Image = base64Encode(bytes);
      final mushroom = await _kindwiseService.identifyMushroom(base64Image);

      setState(() => _mushroom = mushroom);
    } catch (e) {
      _showError("$e");
    } finally {
      setState(() => _isLoading = false);
    }
  }

  // Error SnackBar
  void _showError(String message) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (_selectedImage == null) ...[
          Expanded(
            child: Center(child: Text("Pick an image to start scanning.")),
          ),
          _buildImagePickerButtons(),
        ] else
          Expanded(
            child:
                _isLoading
                    ? Center(child: CircularProgressIndicator())
                    : _mushroom != null
                    ? Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [_buildMushroomInfo()],
                    )
                    : Column(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "Ocurred a problem picking the image, try again",
                            ),
                          ),
                        ),
                        _buildImagePickerButtons(),
                      ],
                    ),
          ),
      ],
    );
  }

  Widget _buildMushroomInfo() {
    return Flexible(
      child: FadingEdgeScrollView.fromSingleChildScrollView(
        gradientFractionOnStart: 0.05,
        gradientFractionOnEnd: 0.05,
        child: SingleChildScrollView(
          controller: _scrollViewController,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 10,
                  child: Image.file(
                    _selectedImage!,
                    height:
                        MediaQuery.of(context).size.height /
                        3, // screen size divided by 3
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 4),
                    Text(
                      _mushroom?.isMushroom == false
                          ? "Mushroom not detected with ${((1 - (_mushroom?.isMushroomProbability ?? 0.0)) * 100).toStringAsFixed(2)}% certainty."
                          : "Mushroom detected with ${((_mushroom?.isMushroomProbability ?? 0.0) * 100).toStringAsFixed(2)}% certainty.",
                    ),
                  ],
                ),
                if (_mushroom?.suggestions != []) ...[_buildSuggestions()],
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildImagePickerButtons() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Icon(Icons.camera_alt),
              label: Text(
                "Camera",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () => _pickImage(ImageSource.camera),
            ),
          ),
          SizedBox(height: 8),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              icon: Icon(Icons.image),
              label: Text(
                "Gallery",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () => _pickImage(ImageSource.gallery),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSuggestions() {
    return Column(
      children: [
        SizedBox(height: 20),
        if (_mushroom?.isMushroom == false && !_wasShowButtonClicked) ...[
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              icon: Icon(Icons.lightbulb),
              label: Text(
                "Show",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onPressed: () => setState(() => _wasShowButtonClicked = true),
            ),
          ),
        ] else ...[
          Row(
            children: [
              SizedBox(width: 4),
              Text("Found ${_mushroom?.suggestions.length} suggestions"),
            ],
          ),
          SizedBox(height: 8),
          SuggestionsWidget(suggestions: _mushroom!.suggestions),
        ],
      ],
    );
  }
}
