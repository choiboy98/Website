import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(20),
        child: SizedBox(
          child: Row(
            children: [
              // Left Text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'brb traveling',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'brb creating',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              // Right Text
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'brb exploring',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
