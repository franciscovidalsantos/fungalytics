import 'dart:convert';
import 'dart:io';
import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/services/mushroom_mapper.dart';
import 'package:http/http.dart' as http;

class KindwiseService {
  static const String _apiKey = ""; // API key
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
        throw "Failed to identify the mushroom.";
      }
    } on SocketException {
      throw "No Internet connection. Please check your network settings.";
    } on HttpException {
      throw "Couldn't find the mushroom identification service.";
    } on FormatException {
      throw "Bad response format from the server.";
    } catch (e) {
      rethrow;
    }
  }
}
