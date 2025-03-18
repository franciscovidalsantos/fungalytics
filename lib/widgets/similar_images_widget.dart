import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/widgets/similar_images_item.dart';

class SimilarImagesWidget extends StatefulWidget {
  const SimilarImagesWidget({
    super.key,
    required this.similarImages,
    required this.suggestionName,
  });
  final List<MushroomSimilarImage> similarImages;
  final String suggestionName;

  @override
  State<SimilarImagesWidget> createState() => _SimilarImagesWidgetState();
}

class _SimilarImagesWidgetState extends State<SimilarImagesWidget> {
  final _controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          child: FadingEdgeScrollView.fromSingleChildScrollView(
            gradientFractionOnEnd: 0.1,
            gradientFractionOnStart: 0.1,
            child: SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
                child: Row(
                  spacing: 4,
                  children:
                      widget.similarImages
                          .map(
                            (image) => SimilarImagesItem(
                              image: image,
                              suggestionName: widget.suggestionName,
                            ),
                          )
                          .toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
