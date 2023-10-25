import 'package:flutter/material.dart';

class LandingPageImage extends StatelessWidget {
  const LandingPageImage({super.key, required this.countryLandingImage});

  final String countryLandingImage;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Center(
        child: Image.asset(
          countryLandingImage,
          height: screenSize.height / 2,
        ),
      ),
    );
  }
}
