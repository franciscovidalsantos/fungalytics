import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';
import 'package:fungalytics/widgets/similar_images_widget.dart';

class SuggestionsItem extends StatefulWidget {
  const SuggestionsItem({
    super.key,
    required this.index,
    required this.suggestion,
  });
  final MushroomSuggestion suggestion;
  final int index;

  @override
  State<SuggestionsItem> createState() => _SuggestionsItemState();
}

class _SuggestionsItemState extends State<SuggestionsItem> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  widget.suggestion.name,
                  // "Suggestion ${widget.index + 1}: ${widget.suggestion!.name}",
                  overflow: TextOverflow.ellipsis,
                ),
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
        ),

        if (_isChecked) ...[
          Padding(
            padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Probability: ${((widget.suggestion.probability) * 100).toStringAsFixed(2)}%",
                ),
                SizedBox(height: 8),
                if (widget.suggestion.similarImages.isEmpty)
                  ...[]
                else ...[
                  Text("Similar Images:"),
                  SizedBox(height: 8),
                  SimilarImagesWidget(
                    similarImages: widget.suggestion.similarImages,
                    suggestionName: widget.suggestion.name,
                  ),
                ],
              ],
            ),
          ),
        ],
      ],
    );
  }
}
