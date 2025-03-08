import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/models/mushroom_similar_image.dart';
import 'package:fungalytics/models/mushroom_suggestion.dart';

class MushroomMapper {
  static MushroomResponse fromJson(Map<String, dynamic> json) {
    var isMushroomData = json['result']['is_mushroom'];
    bool isMushroom = isMushroomData['binary'];
    double probability = isMushroomData['probability'].toDouble();

    var suggestionsList =
        (json['result']['classification']['suggestions'] as List)
            .map(
              (sugestion) => MushroomSuggestion(
                id: sugestion['id'],
                name: sugestion['name'],
                probability: sugestion['probability'].toDouble(),
                similarImages:
                    sugestion['similar_images'] == null
                        ? null
                        : (sugestion['similar_images'] as List)
                            .map(
                              (similarimage) => MushroomSimilarImage(
                                image: similarimage["url"],
                              ),
                            )
                            .toList(),
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
