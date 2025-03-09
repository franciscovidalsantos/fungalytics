import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';
import 'package:fungalytics/widgets/similar_images_widget.dart';

class SuggestionsWidget extends StatelessWidget {
  const SuggestionsWidget({
    super.key,
    required this.index,
    required this.suggestion,
  });
  final MushroomSuggestion? suggestion;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Suggestion ${index + 1}: ${suggestion?.name ?? 'Unknown'}"),
        Text(
          "Probability: ${((suggestion?.probability ?? 0.0) * 100).toStringAsFixed(2)}%",
        ),

        // if (_mushroom?.suggestions[i].similarImages == null &&
        //                     _mushroom!.suggestions[i].similarImages!.any(
        //                       (images) => false,
        //                     ))

        // TODO: understand if its worth it to only use this condition instead of the one above
        // since we used a mock data that may return null for similarImages due to sending true regarding
        // similar_images property inside of our POST request body
        if (suggestion?.similarImages == null ||
            suggestion!.similarImages!.isEmpty)
          ...[]
        else ...[
          Text("Similar Images:"),
          SimilarImagesWidget(similarImages: suggestion?.similarImages),
        ],
      ],
    );
  }
}
