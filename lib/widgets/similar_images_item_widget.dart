import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/screens/image_screen.dart';

class SimilarImagesItemWidget extends StatefulWidget {
  const SimilarImagesItemWidget({super.key, required this.image});
  final MushroomSimilarImage image;
  @override
  State<SimilarImagesItemWidget> createState() =>
      _SimilarImagesItemWidgetState();
}

class _SimilarImagesItemWidgetState extends State<SimilarImagesItemWidget> {
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    // _setLoading(); // Start loading when widget is created
  }

  Future<void> _setLoading() async {
    setState(() => _isLoading = true);
    try {
      await Future.delayed(Duration(seconds: 2));
    } finally {
      setState(() => _isLoading = false);
    }
  }

  void _showImageScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ImageScreen(imageUrl: widget.image.url),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading
        ? SizedBox(
          width: 80,
          height: 80,
          child: Center(child: CircularProgressIndicator()),
        )
        : Padding(
          padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
          child: GestureDetector(
            onTap: () => _showImageScreen(context),
            onLongPress: () => _showImageScreen(context),
            child: Image.network(widget.image.url),
          ),
        );
  }
}
