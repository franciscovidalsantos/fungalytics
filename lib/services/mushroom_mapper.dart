import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';

class MushroomMapper {
  static MushroomResponse fromJson(Map<String, dynamic> json) {
    var isMushroomData = json['result']['is_mushroom'];
    bool isMushroom = isMushroomData['binary'];
    double probability = isMushroomData['probability'].toDouble();

    var suggestionsList =
        (json['result']['classification']['suggestions'] as List)
            .map(
              (s) => MushroomSuggestion(
                id: s['id'],
                name: s['name'],
                probability: s['probability'].toDouble(),
              ),
            )
            .toList();

    return MushroomResponse(
      isMushroom: isMushroom,
      isMushroomProbability: probability,
      suggestions: suggestionsList,
    );
  }
}
