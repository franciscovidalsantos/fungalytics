import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/screens/image_screen.dart';

class SimilarImagesItem extends StatefulWidget {
  const SimilarImagesItem({
    super.key,
    required this.image,
    required this.suggestionName,
  });
  final MushroomSimilarImage image;
  final String suggestionName;
  @override
  State<SimilarImagesItem> createState() => _SimilarImagesItemState();
}

class _SimilarImagesItemState extends State<SimilarImagesItem> {
  void _showImageScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder:
            (context) => ImageScreen(
              imageUrl: widget.image.url,
              suggestionName: widget.suggestionName,
            ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: GestureDetector(
        onTap: () => _showImageScreen(context),
        child: Card(
          clipBehavior: Clip.hardEdge,
          elevation: 5,
          child: CachedNetworkImage(
            imageUrl: widget.image.url,
            placeholder:
                (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget:
                (context, url, error) => Icon(
                  Icons.error,
                  color: const Color.fromARGB(255, 109, 50, 50),
                ),
          ),
        ),
      ),
    );
  }
}
