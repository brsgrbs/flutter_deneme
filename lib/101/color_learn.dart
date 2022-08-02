import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          color: ColorItems.sulu,
          child: const Text('data'),
        ));
  }
}

class ColorItems {
  static const Color porsche = Color(0xffEDBB61);

  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
