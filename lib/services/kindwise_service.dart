import 'dart:convert';
import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/services/mushroom_mapper.dart';
import 'package:http/http.dart' as http;

class KindwiseService {
  static const String _apiKey = ""; // our key
  static const String _baseUrl =
      "https://mushroom.kindwise.com/api/v1/identification";

  Future<MushroomResponse?> identifyMushroom(String base64Image) async {
    try {
      final request = await http.post(
        Uri.parse(_baseUrl),
        headers: {"Content-Type": "application/json", "Api-Key": _apiKey},
        body: jsonEncode({
          "images": [base64Image],
          "similar_images": true,
        }),
      );
      if (request.statusCode == 201) {
        final response = jsonDecode(request.body);
        return MushroomMapper.fromJson(response);
      } else {
        print("Status Code: ${request.statusCode}");
        print("Body ${request.body}");
      }
    } catch (e) {
      print("Exception: $e");
    }
    return null;
  }
}
