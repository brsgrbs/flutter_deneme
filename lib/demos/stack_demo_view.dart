import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({Key? key}) : super(key: key);
  final cardHeight = 50.0;
  final cardWidth = 200.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: const RandomImage(), bottom: cardHeight / 2),
                  Positioned(height: cardHeight, width: cardWidth, bottom: 0, child: cardCustom())
                ],
              )),
          const Spacer(flex: 6),
        ],
      ),
    );
  }

  Card cardCustom() {
    return const Card(
      color: Colors.white,
    );
  }
}
