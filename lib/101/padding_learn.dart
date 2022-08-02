import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePadingVertical,
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  color: Colors.white,
                  height: 100,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePadingRightOnly +
                  ProjectPadding.pagePadingVertical,
              child: const Text('ali'),
            )
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePadingVertical = EdgeInsets.symmetric(vertical: 10);

  static const pagePadingRightOnly = EdgeInsets.only(right: 20);
}
