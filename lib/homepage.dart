import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:website/utils/generate_countries.dart';
import 'package:website/utils/homepage_builder.dart';

import 'header.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.countries});

  final List<CountryData> countries;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  void changeDisplayPage(index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    CountryData selectedCountry = widget.countries[pageIndex];

    return Scaffold(
        body: Stack(
      children: [
        Header(),
        Center(
          child: Image.asset(
            selectedCountry.landing,
            height: screenSize.height / 2,
          ),
        ),
        Positioned(
          child: Center(
            child: AnimatedTextKit(
              key: UniqueKey(),
              repeatForever: true,
              animatedTexts: [
                TyperAnimatedText(
                  selectedCountry.name,
                  textStyle: TextStyle(
                      color: Colors.amber, fontSize: screenSize.height * 0.4),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              displayFullTextOnTap: true,
            ),
          ),
        ),
        Positioned(
          top: selectedCountry.landingPopOffsetY,
          left: selectedCountry.landingPopOffsetX,
          child: Image.asset(
            selectedCountry.landingPop,
            height: selectedCountry.landingPopSize,
          ),
        ),
        Positioned(
          top: screenSize.height / 1.5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 200),
              child: Column(
                children: [
                  Text("Select Country"),
                  SizedBox(
                    width: 150,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => changeDisplayPage(0),
                            child: Opacity(
                              opacity: pageIndex == 0 ? 1.0 : 0.3,
                              child: SvgPicture.asset(
                                "lib/assets/flags/4x3/is.svg",
                                semanticsLabel: 'Iceland Flag',
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => changeDisplayPage(1),
                            child: Opacity(
                              opacity: pageIndex == 1 ? 1.0 : 0.3,
                              child: SvgPicture.asset(
                                "lib/assets/flags/4x3/fi.svg",
                                semanticsLabel: 'Finland Flag',
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () => changeDisplayPage(2),
                            child: Opacity(
                              opacity: pageIndex == 2 ? 1.0 : 0.3,
                              child: SvgPicture.asset(
                                "lib/assets/flags/4x3/no.svg",
                                semanticsLabel: 'Norway Flag',
                                width: 30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: screenSize.height / 1.5,
          left: screenSize.width / 1.6,
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 450,
              child: Column(
                children: [
                  Text(
                    selectedCountry.titleText,
                    style: TextStyle(fontFamily: 'Roboto', fontSize: 20),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectedCountry.subText,
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 150,
                        child: FloatingActionButton.extended(
                          backgroundColor: Colors.red.shade400,
                          hoverColor: Colors.red.shade800,
                          onPressed: () {},
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust the value as needed
                          ),
                          label: Text("> Blogs"),
                        ),
                      ),
                      Spacer(),
                      FloatingActionButton(
                        onPressed: () {},
                        child: Text("> Pics"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
