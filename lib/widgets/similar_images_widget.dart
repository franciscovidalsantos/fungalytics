import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/widgets/similar_images_item_widget.dart';

class SimilarImagesWidget extends StatefulWidget {
  const SimilarImagesWidget({super.key, required this.similarImages});
  final List<MushroomSimilarImage>? similarImages;

  @override
  State<SimilarImagesWidget> createState() => _SimilarImagesWidgetState();
}

class _SimilarImagesWidgetState extends State<SimilarImagesWidget> {
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
                    return SimilarImagesItemWidget(image: image);
                  }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
