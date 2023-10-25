import 'package:flutter/material.dart';

class LandingPagePop extends StatelessWidget {
  const LandingPagePop(
      {super.key,
      required this.landingImagePop,
      required this.landingImagePopSize});

  final String landingImagePop;
  final double landingImagePopSize;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Center(
        child: Image.asset(
          landingImagePop,
          height: landingImagePopSize,
        ),
      ),
    );
  }
}
