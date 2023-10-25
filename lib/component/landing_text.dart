import 'package:flutter/material.dart';

class LandingPageText extends StatelessWidget {
  const LandingPageText({super.key, required this.countryName});

  final String countryName;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height,
      width: screenSize.width,
      child: Center(
        child: Text(
          countryName,
          style:
              TextStyle(color: Colors.amber, fontSize: screenSize.height * 0.4),
        ),
      ),
    );
  }
}
