import 'package:fungalytics/models/mushroom_suggestion.dart';

class MushroomResponse {
  final bool isMushroom;
  final double isMushroomProbability;
  final List<MushroomSuggestion>? suggestions;

  MushroomResponse({
    required this.isMushroom,
    required this.isMushroomProbability,
    required this.suggestions,
  });
}
