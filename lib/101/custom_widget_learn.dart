import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({Key? key}) : super(key: key);
  final String title = 'Food';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: CustomFoodButton(
                  title: title,
                  onPressed: () {},
                )),
          )),
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CustomFoodButton(
              title: title,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class _ColorsUtility {
  final Color red = Colors.red;
  final Color white = Colors.white;
}

class _PaddingUtility {
  final EdgeInsets normalPadding = const EdgeInsets.all(16.0);
}

class CustomFoodButton extends StatelessWidget with _ColorsUtility, _PaddingUtility {
  CustomFoodButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);
  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: red, shape: const StadiumBorder()),
        onPressed: onPressed,
        child: Padding(
          padding: normalPadding,
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(color: white, fontWeight: FontWeight.bold),
          ),
        ));
  }
}
