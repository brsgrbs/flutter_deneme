import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({Key? key}) : super(key: key);
  final IconSizes iconSizes = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Merhaba')),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.message_outlined,
                color: Colors.red,
                size: 40,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: iconSizes.iconsmall,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.message_outlined,
                color: iconColors.froly,
                size: IconSizes.iconsmall2x,
              ))
        ],
      ),
    );
  }
}

class IconSizes {
  final double iconsmall = 40;
  static const double iconsmall2x = 80;
}

class IconColors {
  final Color froly = const Color(0xffED618A);
}
