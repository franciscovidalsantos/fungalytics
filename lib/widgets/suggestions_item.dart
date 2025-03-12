import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';
import 'package:fungalytics/widgets/similar_images_widget.dart';

class SuggestionsItem extends StatefulWidget {
  const SuggestionsItem({
    super.key,
    required this.index,
    required this.suggestion,
  });
  final MushroomSuggestion? suggestion;
  final int index;

  @override
  State<SuggestionsItem> createState() => _SuggestionsItemState();
}

class _SuggestionsItemState extends State<SuggestionsItem> {
  bool _isLoading = false;
  bool _isChecked = false;
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Suggestion ${widget.index + 1}: ${widget.suggestion?.name ?? 'Unknown'}",
            ),
            Switch(
              value: _isChecked,
              onChanged: (value) {
                setState(() {
                  _isChecked = value;
                });
              },
            ),
          ],
        ),

        if (_isChecked) ...[
          Text(
            "Probability: ${((widget.suggestion?.probability ?? 0.0) * 100).toStringAsFixed(2)}%",
          ),

          // if (_mushroom?.suggestions[i].similarImages == null &&
          //                     _mushroom!.suggestions[i].similarImages!.any(
          //                       (images) => false,
          //                     ))

          // TODO: understand if its worth it to only use this condition instead of the one above
          // since we used a mock data that may return null for similarImages due to sending true regarding
          // similar_images property inside of our POST request body
          if (widget.suggestion?.similarImages == null ||
              widget.suggestion!.similarImages!.isEmpty)
            ...[]
          else ...[
            Text("Similar Images:"),
            SimilarImagesWidget(
              similarImages: widget.suggestion?.similarImages,
            ),
          ],
        ],
      ],
    );
  }
}
