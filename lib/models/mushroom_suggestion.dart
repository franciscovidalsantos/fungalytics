import 'package:fungalytics/models/mushroom_similar_image.dart';

class MushroomSuggestion {
  final String id;
  final String name;
  final double probability;
  final List<MushroomSimilarImage>? similarImages;

  MushroomSuggestion({
    required this.id,
    required this.name,
    required this.probability,
    required this.similarImages,
  });
}
