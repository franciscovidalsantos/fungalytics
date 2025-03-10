import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:fungalytics/services/kindwise_service.dart';
import 'package:fungalytics/services/mock_kindwise_service.dart';
import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/widgets/suggestion_item_widget.dart';
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
  final _kindwiseService = MockKindwiseService();

  // Function to pick an image
  Future<void> _pickImage(ImageSource source) async {
    final pickedFile = await _picker.pickImage(source: source);
    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
        _mushroom = null; // Reset result
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
      _showError("Error identifying mushroom: $e");
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
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      child: Column(
        children: [
          if (_selectedImage == null)
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text("Pick an image to start scanning.")),
                ],
              ),
            )
          else
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Ocurred a problem picking the image, try again",
                          ),
                        ],
                      ),
            ),
          _buildImagePickerButtons(),
        ],
      ),
    );
  }

  Widget _buildMushroomInfo() {
    return Flexible(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.file(
              _selectedImage!,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            if (_mushroom?.isMushroom == false) ...[
              Text(
                "Mushroom not detected with ${((1 - (_mushroom?.isMushroomProbability ?? 0.0)) * 100).toStringAsFixed(2)}% certainty",
              ),
            ] else ...[
              Text(
                "Mushroom detected with ${((_mushroom?.isMushroomProbability ?? 0.0) * 100).toStringAsFixed(2)}% certainty.",
              ),
              SizedBox(height: 20),
              Text("Found ${_mushroom?.suggestions?.length} matches:"),
              for (
                int i = 0;
                i < (_mushroom?.suggestions?.length ?? 0);
                i++
              ) ...[
                SizedBox(height: 20),
                SuggestionsWidget(
                  index: i,
                  suggestion: _mushroom?.suggestions?[i],
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildImagePickerButtons() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Icon(Icons.image),
            label: Text("Gallery"),
            onPressed: () => _pickImage(ImageSource.gallery),
          ),
        ),
        // SizedBox(height: 16),
        // SizedBox(
        //   width: double.infinity,
        //   child: ElevatedButton.icon(
        //     icon: Icon(Icons.camera_alt),
        //     label: Text("Camera"),
        //     onPressed: () => _pickImage(ImageSource.camera),
        //   ),
        // ),
        SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton.icon(
            icon: Icon(Icons.restart_alt),
            label: Text("Clear"),
            onPressed: () {
              setState(() {
                _selectedImage = null;
              });
            },
          ),
        ),
      ],
    );
  }
}
