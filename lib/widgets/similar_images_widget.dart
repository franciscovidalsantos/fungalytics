import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';

class SimilarImagesWidget extends StatefulWidget {
  const SimilarImagesWidget({super.key, required this.similarImages});
  final List<MushroomSimilarImage>? similarImages;

  @override
  State<SimilarImagesWidget> createState() {
    return _SimilarImagesWidgetState();
  }
}

class _SimilarImagesWidgetState extends State<SimilarImagesWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 80,
          decoration: BoxDecoration(color: Colors.amber),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children:
                  widget.similarImages!.map((image) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(4, 4, 0, 4),
                      child: Image.network(image.image),
                    );
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
