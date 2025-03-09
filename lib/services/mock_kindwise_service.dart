import 'dart:async';

import 'package:fungalytics/models/mushroom_response.dart';
import 'package:fungalytics/services/mushroom_mapper.dart';

class MockKindwiseService {
  Future<MushroomResponse?> identifyMushroom(String base64Image) async {
    await Future.delayed(Duration(seconds: 2)); // simulate network delay

    // change MockResponses enum value to test different types of response
    final response =
        MockResponses.withMultipleSuggestionsAndNoSimilarImages.response;

    return MushroomMapper.fromJson(response);
  }
}

enum MockResponses {
  // removed "input" from all the responses since it's not needed
  withFewSuggestions({
    "result": {
      "classification": {
        "suggestions": [
          {
            "id": "5a9de806cc434177",
            "name": "Parmelia sulcata",
            "probability": 0.0306,
            "similar_images": [
              {
                "id": "74d0c20659b1c3669c5e4a19ad57fc07be06b6f5",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/74d/0c20659b1c3669c5e4a19ad57fc07be06b6f5.jpg",
                "license_name": "CC BY-NC-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-sa/4.0/",
                "citation": "Bogdan V. Kryzhatyuk",
                "similarity": 0.203,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/74d/0c20659b1c3669c5e4a19ad57fc07be06b6f5.small.jpg",
              },
              {
                "id": "d45549f97c69a979781314a0685c1c40b5a0a960",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/d45/549f97c69a979781314a0685c1c40b5a0a960.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "dmarullo",
                "similarity": 0.161,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/d45/549f97c69a979781314a0685c1c40b5a0a960.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "5a9de806cc434177"},
          },
          {
            "id": "cf74ee4793ef5fe1",
            "name": "Byssocorticium atrovirens",
            "probability": 0.0199,
            "similar_images": [
              {
                "id": "32ce5bfbb4b332f082679849e2e313533979d61b",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/32c/e5bfbb4b332f082679849e2e313533979d61b.jpeg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Garrett Taylor",
                "similarity": 0.574,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/32c/e5bfbb4b332f082679849e2e313533979d61b.small.jpeg",
              },
              {
                "id": "d4c2c6ef5c484dac6d10e18793105924999204a8",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/d4c/2c6ef5c484dac6d10e18793105924999204a8.jpeg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Garrett Taylor",
                "similarity": 0.41,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/d4c/2c6ef5c484dac6d10e18793105924999204a8.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "cf74ee4793ef5fe1"},
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
    "created": 1741465310.290852,
    "completed": 1741465310.43274,
  }),
  withMultipleSuggestions({
    "result": {
      "classification": {
        "suggestions": [
          {
            "id": "453d7f32fee4c009",
            "name": "Phyllotopsis nidulans",
            "probability": 0.286,
            "similar_images": [
              {
                "id": "e00bcbeacc1d0123ebaafbe282cdeec96e40b8d3",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.jpg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "LJ Moore-McClelland",
                "similarity": 0.465,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.small.jpg",
              },
              {
                "id": "1be583868193786aa349197a0c9f0fe64bb3a139",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/1be/583868193786aa349197a0c9f0fe64bb3a139.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Cody Capella",
                "similarity": 0.457,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/1be/583868193786aa349197a0c9f0fe64bb3a139.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "453d7f32fee4c009"},
          },
          {
            "id": "f6d422b35dfa415e",
            "name": "Schizophyllum commune",
            "probability": 0.1663,
            "similar_images": [
              {
                "id": "8f03757cfd9c5183f59952c93f91d4ec43081fd8",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "John",
                "similarity": 0.467,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.small.jpg",
              },
              {
                "id": "007d88362b3944a69b688bd25a0422456f5da74a",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.jpg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Jules De Mey",
                "similarity": 0.432,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "f6d422b35dfa415e"},
          },
          {
            "id": "5b4086c3a4110fe6",
            "name": "Flammulina velutipes",
            "probability": 0.1485,
            "similar_images": [
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "5b4086c3a4110fe6"},
          },
          {
            "id": "94938f8c6d1f375d",
            "name": "Verpa bohemica",
            "probability": 0.0773,
            "similar_images": [
              {
                "id": "aeca78efce21064134c25c6821203d922e8ca4f9",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/aec/a78efce21064134c25c6821203d922e8ca4f9.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Valentin Kosterin",
                "similarity": 0.442,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/aec/a78efce21064134c25c6821203d922e8ca4f9.small.jpeg",
              },
              {
                "id": "0370dad71f16ba7b86562cc052f98fc6d450b67e",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/037/0dad71f16ba7b86562cc052f98fc6d450b67e.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Valentin Kosterin",
                "similarity": 0.428,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/037/0dad71f16ba7b86562cc052f98fc6d450b67e.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "94938f8c6d1f375d"},
          },
          {
            "id": "173a8752e381ef2d",
            "name": "Gymnosporangium clavariiforme",
            "probability": 0.0578,
            "similar_images": [
              {
                "id": "45633c1a6f63699ec3d2792eb85060957e0d4ac2",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/456/33c1a6f63699ec3d2792eb85060957e0d4ac2.jpg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Sigurd Iversen",
                "similarity": 0.523,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/456/33c1a6f63699ec3d2792eb85060957e0d4ac2.small.jpg",
              },
              {
                "id": "00d759573b7d947f22d6ccfb0ea97168b248b54c",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/00d/759573b7d947f22d6ccfb0ea97168b248b54c.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Pernilla Brandt",
                "similarity": 0.514,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/00d/759573b7d947f22d6ccfb0ea97168b248b54c.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "173a8752e381ef2d"},
          },
          {
            "id": "a3b729a6f87da818",
            "name": "Laurobasidium lauri",
            "probability": 0.0428,
            "similar_images": [
              {
                "id": "e726e2f5f4a6125d99079bc523ae2c431a1ffc51",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e72/6e2f5f4a6125d99079bc523ae2c431a1ffc51.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Yves Bas",
                "similarity": 0.539,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e72/6e2f5f4a6125d99079bc523ae2c431a1ffc51.small.jpeg",
              },
              {
                "id": "34a8c2c4fc937b2921eda85a507caa96ccd0bca3",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/34a/8c2c4fc937b2921eda85a507caa96ccd0bca3.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Vítor Jorge",
                "similarity": 0.534,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/34a/8c2c4fc937b2921eda85a507caa96ccd0bca3.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "a3b729a6f87da818"},
          },
          {
            "id": "3ae6301930235550",
            "name": "Climacodon septentrionalis",
            "probability": 0.0376,
            "similar_images": [
              {
                "id": "546a2b179edfd155b7fc840e0ce9519ec2f27a5e",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.jpeg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Bradley Rasmussen",
                "similarity": 0.477,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.small.jpeg",
              },
              {
                "id": "e270bc55b750cd32e7d49cc46a52d315867bcc59",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "natemya",
                "similarity": 0.46,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "3ae6301930235550"},
          },
          {
            "id": "e06d66094b9f1e1b",
            "name": "Laetiporus sulphureus",
            "probability": 0.0325,
            "similar_images": [
              {
                "id": "a571a9eeb691b5db161ca41d099430b641f71e82",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a57/1a9eeb691b5db161ca41d099430b641f71e82.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Alexander Iosipenko",
                "similarity": 0.462,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a57/1a9eeb691b5db161ca41d099430b641f71e82.small.jpg",
              },
              {
                "id": "61f2828a0cfc0923a4f4b792612362e7cc38f97f",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/61f/2828a0cfc0923a4f4b792612362e7cc38f97f.jpeg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "bellamap",
                "similarity": 0.458,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/61f/2828a0cfc0923a4f4b792612362e7cc38f97f.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "e06d66094b9f1e1b"},
          },
          {
            "id": "753a57dd4795498e",
            "name": "Daedalea quercina",
            "probability": 0.014,
            "similar_images": [
              {
                "id": "7086c4ab68d4bca117949e31d914b129cb3aa236",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/708/6c4ab68d4bca117949e31d914b129cb3aa236.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Jan Lyngby",
                "similarity": 0.49,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/708/6c4ab68d4bca117949e31d914b129cb3aa236.small.jpg",
              },
              {
                "id": "734eb03f07f32a48a3d5e5133d9388ff2e1bdabd",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Örjan Fritz",
                "similarity": 0.45,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "753a57dd4795498e"},
          },
          {
            "id": "ffd9318c0932c9f4",
            "name": "Typhula contorta",
            "probability": 0.0137,
            "similar_images": [
              {
                "id": "3d9d72031b10133e420612afdcaf5236639c7871",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/3d9/d72031b10133e420612afdcaf5236639c7871.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Patrick Fritzson",
                "similarity": 0.519,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/3d9/d72031b10133e420612afdcaf5236639c7871.small.jpg",
              },
              {
                "id": "93562687e9ed3fb4343b3f5569039a883e2122f5",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/935/62687e9ed3fb4343b3f5569039a883e2122f5.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Annica Beil",
                "similarity": 0.513,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/935/62687e9ed3fb4343b3f5569039a883e2122f5.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "ffd9318c0932c9f4"},
          },
        ],
      },
      "is_mushroom": {
        "probability": 0.7249594,
        "threshold": 0.4,
        "binary": true,
      },
    },
    "status": "COMPLETED",
    "sla_compliant_client": true,
    "sla_compliant_system": true,
    "created": 1741421080.607858,
    "completed": 1741421080.838342,
  }),
  withMultipleSuggestionsAndMultipleSimilarImages({
    "result": {
      "classification": {
        "suggestions": [
          {
            "id": "453d7f32fee4c009",
            "name": "Phyllotopsis nidulans",
            "probability": 0.286,
            "similar_images": [
              {
                "id": "e00bcbeacc1d0123ebaafbe282cdeec96e40b8d3",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.jpg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "LJ Moore-McClelland",
                "similarity": 0.465,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.small.jpg",
              },
              {
                "id": "e00bcbeacc1d0123ebaafbe282cdeec96e40b8d3",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.jpg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "LJ Moore-McClelland",
                "similarity": 0.465,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e00/bcbeacc1d0123ebaafbe282cdeec96e40b8d3.small.jpg",
              },
              {
                "id": "1be583868193786aa349197a0c9f0fe64bb3a139",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/1be/583868193786aa349197a0c9f0fe64bb3a139.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Cody Capella",
                "similarity": 0.457,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/1be/583868193786aa349197a0c9f0fe64bb3a139.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "453d7f32fee4c009"},
          },
          {
            "id": "f6d422b35dfa415e",
            "name": "Schizophyllum commune",
            "probability": 0.1663,
            "similar_images": [
              {
                "id": "8f03757cfd9c5183f59952c93f91d4ec43081fd8",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "John",
                "similarity": 0.467,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.small.jpg",
              },
              {
                "id": "007d88362b3944a69b688bd25a0422456f5da74a",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.jpg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Jules De Mey",
                "similarity": 0.432,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.small.jpg",
              },
              {
                "id": "8f03757cfd9c5183f59952c93f91d4ec43081fd8",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "John",
                "similarity": 0.467,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.small.jpg",
              },
              {
                "id": "007d88362b3944a69b688bd25a0422456f5da74a",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.jpg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Jules De Mey",
                "similarity": 0.432,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.small.jpg",
              },
              {
                "id": "8f03757cfd9c5183f59952c93f91d4ec43081fd8",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "John",
                "similarity": 0.467,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/8f0/3757cfd9c5183f59952c93f91d4ec43081fd8.small.jpg",
              },
              {
                "id": "007d88362b3944a69b688bd25a0422456f5da74a",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.jpg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Jules De Mey",
                "similarity": 0.432,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/007/d88362b3944a69b688bd25a0422456f5da74a.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "f6d422b35dfa415e"},
          },
          {
            "id": "5b4086c3a4110fe6",
            "name": "Flammulina velutipes",
            "probability": 0.1485,
            "similar_images": [
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
              {
                "id": "ede632ffa6e03fd685a16ca2d9c739a83749df98",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.jpeg",
                "license_name": "CC BY-NC-ND 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc-nd/4.0/",
                "citation": "Teresa Staats",
                "similarity": 0.455,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/ede/632ffa6e03fd685a16ca2d9c739a83749df98.small.jpeg",
              },
              {
                "id": "2d7556e2aa276e7469cf988e35c2b85554f18400",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.jpg",
                "license_name": "CC BY-SA 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-sa/4.0/",
                "citation": "Michel Langeveld",
                "similarity": 0.434,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/2d7/556e2aa276e7469cf988e35c2b85554f18400.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "5b4086c3a4110fe6"},
          },
          {
            "id": "94938f8c6d1f375d",
            "name": "Verpa bohemica",
            "probability": 0.0773,
            "similar_images": [],
            "details": {"language": "en", "entity_id": "94938f8c6d1f375d"},
          },
          {
            "id": "173a8752e381ef2d",
            "name": "Gymnosporangium clavariiforme",
            "probability": 0.0578,
            "similar_images": [
              {
                "id": "00d759573b7d947f22d6ccfb0ea97168b248b54c",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/00d/759573b7d947f22d6ccfb0ea97168b248b54c.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Pernilla Brandt",
                "similarity": 0.514,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/00d/759573b7d947f22d6ccfb0ea97168b248b54c.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "173a8752e381ef2d"},
          },
          {
            "id": "a3b729a6f87da818",
            "name": "Laurobasidium lauri",
            "probability": 0.0428,
            "similar_images": [
              {
                "id": "e726e2f5f4a6125d99079bc523ae2c431a1ffc51",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e72/6e2f5f4a6125d99079bc523ae2c431a1ffc51.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Yves Bas",
                "similarity": 0.539,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e72/6e2f5f4a6125d99079bc523ae2c431a1ffc51.small.jpeg",
              },
              {
                "id": "34a8c2c4fc937b2921eda85a507caa96ccd0bca3",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/34a/8c2c4fc937b2921eda85a507caa96ccd0bca3.jpeg",
                "license_name": "CC BY 4.0",
                "license_url": "https://creativecommons.org/licenses/by/4.0/",
                "citation": "Vítor Jorge",
                "similarity": 0.534,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/34a/8c2c4fc937b2921eda85a507caa96ccd0bca3.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "a3b729a6f87da818"},
          },
          {
            "id": "3ae6301930235550",
            "name": "Climacodon septentrionalis",
            "probability": 0.0376,
            "similar_images": [
              {
                "id": "546a2b179edfd155b7fc840e0ce9519ec2f27a5e",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.jpeg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Bradley Rasmussen",
                "similarity": 0.477,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.small.jpeg",
              },
              {
                "id": "e270bc55b750cd32e7d49cc46a52d315867bcc59",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "natemya",
                "similarity": 0.46,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.small.jpg",
              },
              {
                "id": "546a2b179edfd155b7fc840e0ce9519ec2f27a5e",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.jpeg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Bradley Rasmussen",
                "similarity": 0.477,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/546/a2b179edfd155b7fc840e0ce9519ec2f27a5e.small.jpeg",
              },
              {
                "id": "e270bc55b750cd32e7d49cc46a52d315867bcc59",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "natemya",
                "similarity": 0.46,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/e27/0bc55b750cd32e7d49cc46a52d315867bcc59.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "3ae6301930235550"},
          },
          {
            "id": "e06d66094b9f1e1b",
            "name": "Laetiporus sulphureus",
            "probability": 0.0325,
            "similar_images": [
              {
                "id": "a571a9eeb691b5db161ca41d099430b641f71e82",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a57/1a9eeb691b5db161ca41d099430b641f71e82.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Alexander Iosipenko",
                "similarity": 0.462,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/a57/1a9eeb691b5db161ca41d099430b641f71e82.small.jpg",
              },
              {
                "id": "61f2828a0cfc0923a4f4b792612362e7cc38f97f",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/61f/2828a0cfc0923a4f4b792612362e7cc38f97f.jpeg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "bellamap",
                "similarity": 0.458,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/61f/2828a0cfc0923a4f4b792612362e7cc38f97f.small.jpeg",
              },
            ],
            "details": {"language": "en", "entity_id": "e06d66094b9f1e1b"},
          },
          {
            "id": "753a57dd4795498e",
            "name": "Daedalea quercina",
            "probability": 0.014,
            "similar_images": [
              {
                "id": "7086c4ab68d4bca117949e31d914b129cb3aa236",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/708/6c4ab68d4bca117949e31d914b129cb3aa236.jpg",
                "license_name": "CC BY-NC 4.0",
                "license_url":
                    "https://creativecommons.org/licenses/by-nc/4.0/",
                "citation": "Jan Lyngby",
                "similarity": 0.49,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/708/6c4ab68d4bca117949e31d914b129cb3aa236.small.jpg",
              },
              {
                "id": "734eb03f07f32a48a3d5e5133d9388ff2e1bdabd",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Örjan Fritz",
                "similarity": 0.45,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.small.jpg",
              },
              {
                "id": "734eb03f07f32a48a3d5e5133d9388ff2e1bdabd",
                "url":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.jpg",
                "license_name": "CC0",
                "license_url":
                    "https://creativecommons.org/publicdomain/zero/1.0/",
                "citation": "Örjan Fritz",
                "similarity": 0.45,
                "url_small":
                    "https://mushroom-id.ams3.cdn.digitaloceanspaces.com/similar_images/2/734/eb03f07f32a48a3d5e5133d9388ff2e1bdabd.small.jpg",
              },
            ],
            "details": {"language": "en", "entity_id": "753a57dd4795498e"},
          },
          {
            "id": "ffd9318c0932c9f4",
            "name": "Typhula contorta",
            "probability": 0.0137,
            "similar_images": [],
            "details": {"language": "en", "entity_id": "ffd9318c0932c9f4"},
          },
        ],
      },
      "is_mushroom": {
        "probability": 0.7249594,
        "threshold": 0.4,
        "binary": true,
      },
    },
    "status": "COMPLETED",
    "sla_compliant_client": true,
    "sla_compliant_system": true,
    "created": 1741421080.607858,
    "completed": 1741421080.838342,
  }),
  withMultipleSuggestionsAndNoSimilarImages({
    "result": {
      "classification": {
        "suggestions": [
          {
            "id": "a3b30581daa42a8a",
            "name": "Hericium erinaceus",
            "probability": 0.1771,
            "details": {"language": "en", "entity_id": "a3b30581daa42a8a"},
          },
          {
            "id": "173a8752e381ef2d",
            "name": "Gymnosporangium clavariiforme",
            "probability": 0.16,
            "details": {"language": "en", "entity_id": "173a8752e381ef2d"},
          },
          {
            "id": "c7629bb5a16a1dbc",
            "name": "Laetiporus portentosus",
            "probability": 0.125,
            "details": {"language": "en", "entity_id": "c7629bb5a16a1dbc"},
          },
          {
            "id": "453d7f32fee4c009",
            "name": "Phyllotopsis nidulans",
            "probability": 0.0681,
            "details": {"language": "en", "entity_id": "453d7f32fee4c009"},
          },
          {
            "id": "753a57dd4795498e",
            "name": "Daedalea quercina",
            "probability": 0.0653,
            "details": {"language": "en", "entity_id": "753a57dd4795498e"},
          },
          {
            "id": "94938f8c6d1f375d",
            "name": "Verpa bohemica",
            "probability": 0.0546,
            "details": {"language": "en", "entity_id": "94938f8c6d1f375d"},
          },
          {
            "id": "5b4086c3a4110fe6",
            "name": "Flammulina velutipes",
            "probability": 0.0541,
            "details": {"language": "en", "entity_id": "5b4086c3a4110fe6"},
          },
          {
            "id": "b7b97011fad16645",
            "name": "Cronartium quercuum",
            "probability": 0.0457,
            "details": {"language": "en", "entity_id": "b7b97011fad16645"},
          },
          {
            "id": "f58b451a7978103e",
            "name": "Laetiporus gilbertsonii",
            "probability": 0.0407,
            "details": {"language": "en", "entity_id": "f58b451a7978103e"},
          },
          {
            "id": "3ae6301930235550",
            "name": "Climacodon septentrionalis",
            "probability": 0.0251,
            "details": {"language": "en", "entity_id": "3ae6301930235550"},
          },
        ],
      },
      "is_mushroom": {
        "probability": 0.78799295,
        "threshold": 0.4,
        "binary": true,
      },
    },
    "status": "COMPLETED",
    "sla_compliant_client": true,
    "sla_compliant_system": true,
    "created": 1741148678.986464,
    "completed": 1741148679.241525,
  });

  final Map<String, dynamic> response;

  const MockResponses(this.response);
}
