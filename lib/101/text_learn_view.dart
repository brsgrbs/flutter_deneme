import 'package:flutter/material.dart';

class TextLearnView extends StatelessWidget {
  const TextLearnView({Key? key}) : super(key: key);
  final String name = 'Barış';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Welcome $name',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: const TextStyle(
            decoration: TextDecoration.underline,
            fontStyle: FontStyle.italic,
            color: Colors.red,
            wordSpacing: 2,
            letterSpacing: 2,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          'Welcome $name',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: ProjectStyles.welcomeStyle,
        ),
        Text(
          'Welcome $name',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.right,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: ProjetColors.welcomeColor),
        ),
      ])),
    );
  }
}

class ProjectStyles {
  static TextStyle welcomeStyle = const TextStyle(
      decoration: TextDecoration.underline,
      fontStyle: FontStyle.italic,
      color: Colors.red,
      wordSpacing: 2,
      letterSpacing: 2,
      fontSize: 16,
      fontWeight: FontWeight.w600);
}

class ProjetColors {
  static Color welcomeColor = Colors.yellow;
}
