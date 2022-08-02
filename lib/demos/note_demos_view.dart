import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({Key? key}) : super(key: key);
  final _title = 'Create Your First Note';
  final _description = 'Add a note';
  final _createNote = 'Create a Note';
  final _importNote = 'Import Notes';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            Center(
              child: Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/327px-Apple-book.svg.png'),
            ),
            TitleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: SubTitleWidget(title: _description * 10),
            ),
            const Spacer(),
            ElevatedButton(
                onPressed: () {},
                child: SizedBox(
                    height: ButtonHeights.buttonNormalHeigts,
                    child: Center(
                        child: Text(
                      _createNote,
                      style: Theme.of(context).textTheme.headline4,
                    )))),
            TextButton(onPressed: () {}, child: Text(_importNote)),
            const SizedBox(
              height: ButtonHeights.buttonNormalHeigts,
            )
          ],
        ),
      ),
    );
  }
}

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.title})
      : super(key: key);
  final TextAlign textAlign;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline5
            ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
      ),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 20);
}

class ButtonHeights {
  static const double buttonNormalHeigts = 50;
}
