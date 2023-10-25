import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:website/utils/generate_countries.dart';

import '../header.dart';

class HomepageBuilder extends StatelessWidget {
  const HomepageBuilder({
    super.key,
    required this.country,
  });

  final CountryData country;

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Column(
      children: [
        Header(),
        Center(
          child: Image.asset(
            country.landing,
            height: screenSize.height / 2,
          ),
        ),
        Transform.translate(
          offset: Offset(0, -400),
          child: Center(
            child: Text(
              country.name,
              style: TextStyle(
                  color: Colors.amber, fontSize: screenSize.height * 0.4),
            ),
          ),
        ),
        Center(
          child: Image.asset(
            country.landingPop,
            height: country.landingPopSize,
          ),
        )
      ],
    );
  }
}
