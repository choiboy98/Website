import 'package:flutter/material.dart';

class CountryData {
  CountryData(
      {required this.name,
      required this.landing,
      required this.landingPop,
      required this.landingPopSize,
      required this.landingPopOffsetX,
      required this.landingPopOffsetY,
      required this.titleText,
      required this.subText});

  final String name;
  final String landing;
  final String landingPop;
  final double landingPopSize;
  final double landingPopOffsetX;
  final double landingPopOffsetY;
  final String titleText;
  final String subText;

  factory CountryData.fromJson(Map<String, dynamic> data) {
    final String name = data["name"] as String;
    final String landing = data["landing"] as String;
    final String landingPop = data["landingPop"] as String;
    final double landingPopSize = data["landingPopSize"] as double;
    final double landingPopOffsetX = data["landingPopOffsetX"] as double;
    final double landingPopOffsetY = data["landingPopOffsetY"] as double;
    final String titleText = data["titleText"] as String;
    final String subText = data["subText"] as String;

    return CountryData(
        name: name,
        landing: landing,
        landingPop: landingPop,
        landingPopSize: landingPopSize,
        landingPopOffsetX: landingPopOffsetX,
        landingPopOffsetY: landingPopOffsetY,
        titleText: titleText,
        subText: subText);
  }

  static List<CountryData> retrieveCountriesData(context) {
    Size screenSize = MediaQuery.of(context).size;

    final countriesList = [
      {
        "name": "ICELAND",
        "landing": "lib/assets/iceland_landing.png",
        "landingPop": "lib/assets/iceland_landing_pop.png",
        "landingPopSize": 110,
        "landingPopOffsetX": screenSize.width / 2 - 95,
        "landingPopOffsetY": screenSize.height / 2 + 50,
        "titleText":
            "Iceland might be the most beautiful country I've visited.",
        "subText":
            "To be fair, I haven't traveled a lot. Though, I can confidently say this country has one of the best nature and wonders in the whole world. Every corner around the block surprises you with new discoveries. So many sheeps, hot springs, mountains, and great hot dogs. What more can you ask for?"
      },
      {
        "name": "FINLAND",
        "landing": "lib/assets/finland_landing.png",
        "landingPop": "lib/assets/finland_landing_pop.png",
        "landingPopSize": 180,
        "landingPopOffsetX": screenSize.width / 2 - 155,
        "landingPopOffsetY": screenSize.height / 2 + 30,
        "titleText": "Finland? More like SkySauna and Santa Claus Village.",
        "subText":
            "To be fair, I haven't traveled a lot. Though, I can confidently say this country has one of the best nature and wonders in the whole world. Every corner around the block surprises you with new discoveries. So many sheeps, hot springs, mountains, and great hot dogs. What more can you ask for?"
      },
      {
        "name": "NORWAY",
        "landing": "lib/assets/norway_landing.png",
        "landingPop": "lib/assets/norway_landing_pop.png",
        "landingPopSize": 350,
        "landingPopOffsetX": screenSize.width / 2 - 95,
        "landingPopOffsetY": screenSize.height / 2 - 115,
        "titleText":
            "Iceland might be the most beautiful country I've visited.",
        "subText":
            "To be fair, I haven't traveled a lot. Though, I can confidently say this country has one of the best nature and wonders in the whole world. Every corner around the block surprises you with new discoveries. So many sheeps, hot springs, mountains, and great hot dogs. What more can you ask for?"
      }
    ];

    return countriesList
        .map((country) => CountryData.fromJson(country))
        .toList();
  }
}
