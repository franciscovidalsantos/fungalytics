import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/screens/image_screen.dart';

class SimilarImagesItem extends StatefulWidget {
  const SimilarImagesItem({super.key, required this.image});
  final MushroomSimilarImage image;
  @override
  State<SimilarImagesItem> createState() => _SimilarImagesItemState();
}

class _SimilarImagesItemState extends State<SimilarImagesItem> {
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
    return SizedBox(
      width: 100,
      height: 100,
      child:
          _isLoading
              ? Center(child: CircularProgressIndicator())
              : GestureDetector(
                onTap: () => _showImageScreen(context),
                // onLongPress: () => _showImageScreen(context),
                child: Card(
                  clipBehavior: Clip.hardEdge,
                  elevation: 5,
                  child: Image.network(widget.image.url),
                ),
              ),
    );
  }
}
