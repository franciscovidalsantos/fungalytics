import 'dart:async';

import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/services/mushroom_mapper.dart';

class MockKindwiseService {
  Future<MushroomResponse?> identifyMushroom(String base64Image) async {
    await Future.delayed(Duration(seconds: 2)); // Simulate network delay

    dynamic mockResponse = {
      "access_token": "2GiyZoYHzicI05F",
      "model_version": "mushroom_id:2.0.1",
      "custom_id": null,
      "input": {
        "latitude": 49.207,
        "longitude": 16.608,
        "similar_images": true,
        "images": [
          "https://mushroom.kindwise.com/media/images/847f9800c11b43c2943de206479eaef7.jpg",
        ],
        "datetime": "2024-09-04T11:44:01.479987+00:00",
      },
      "result": {
        "classification": {
          "suggestions": [
            {
              "id": "558fbb57c985b800",
              "name": "Boletus edulis",
              "probability": 0.9893,
              "similar_images": [
                {
                  "id": "a1f9082e3a84603c9539954d42534d7d29999d5d",
                  "url":
                      "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a1f/9082e3a84603c9539954d42534d7d29999d5d.jpg",
                  "license_name": "CC BY-NC-ND 4.0",
                  "license_url":
                      "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                  "citation": "Jaap Bekker",
                  "similarity": 0.77,
                  "url_small":
                      "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a1f/9082e3a84603c9539954d42534d7d29999d5d.small.jpg",
                },
                {
                  "id": "45b65fa296406fde23248dad1a956c8814061e4e",
                  "url":
                      "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/45b/65fa296406fde23248dad1a956c8814061e4e.jpg",
                  "license_name": "CC BY-NC 4.0",
                  "license_url":
                      "https://creativecommons.org/licenses/by-nc/4.0/",
                  "citation": "pieroti",
                  "similarity": 0.742,
                  "url_small":
                      "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/45b/65fa296406fde23248dad1a956c8814061e4e.small.jpg",
                },
              ],
              "details": {"language": "en", "entity_id": "558fbb57c985b800"},
            },
          ],
        },
        "is_mushroom": {
          "probability": 0.9021709,
          "threshold": 0.4,
          "binary": true,
        },
      },
      "status": "COMPLETED",
      "sla_compliant_client": true,
      "sla_compliant_system": true,
      "created": 1725450241.479987,
      "completed": 1725450241.700537,
    };
    return MushroomMapper.fromJson(mockResponse);
  }
}
