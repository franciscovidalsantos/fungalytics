import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/widgets/similar_images_item.dart';

class SimilarImagesWidget extends StatefulWidget {
  const SimilarImagesWidget({super.key, required this.similarImages});
  final List<MushroomSimilarImage>? similarImages;

  @override
  State<SimilarImagesWidget> createState() => _SimilarImagesWidgetState();
}

class _SimilarImagesWidgetState extends State<SimilarImagesWidget> {
  bool _isLoading = false;
  final _controller = ScrollController();

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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 80,
          child: FadingEdgeScrollView.fromSingleChildScrollView(
            gradientFractionOnEnd: 0.1,
            gradientFractionOnStart: 0.1,
            child: SingleChildScrollView(
              controller: _controller,
              scrollDirection: Axis.horizontal,
              child: Row(
                children:
                    widget.similarImages!.map((image) {
                      return SimilarImagesItem(image: image);
                    }).toList(),
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
