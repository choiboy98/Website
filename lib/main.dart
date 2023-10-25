import 'package:flutter/material.dart';
import 'package:website/homepage.dart';

import 'utils/generate_countries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    precacheImage(AssetImage("lib/assets/iceland_landing.png"), context);
    precacheImage(AssetImage("lib/assets/finland_landing.png"), context);
    precacheImage(AssetImage("lib/assets/norway_landing.png"), context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(countries: CountryData.retrieveCountriesData(context)),
    );
  }
}
