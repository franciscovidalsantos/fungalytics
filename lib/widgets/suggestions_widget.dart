import 'package:flutter/material.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';
import 'package:fungalytics/widgets/suggestions_item.dart';

class SuggestionsWidget extends StatefulWidget {
  const SuggestionsWidget({super.key, required this.suggestions});
  final List<MushroomSuggestion> suggestions;
  @override
  State<SuggestionsWidget> createState() => _SuggestionsWidgetState();
}

class _SuggestionsWidgetState extends State<SuggestionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < (widget.suggestions.length); i++) ...[
          Row(
            children: [
              Expanded(
                child: SuggestionsItem(
                  index: i,
                  suggestion: widget.suggestions[i],
                ),
              ),
            ],
          ),
          // Here we want to remove the divider from last item in suggestions
          if (i != (widget.suggestions.length) - 1) Divider(),
        ],
      ],
    );
  }
}
