// ignore_for_file: unused_field

import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({Key? key}) : super(key: key);
  final String _imagePath =
      'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/327px-Apple-book.svg.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              height: 200,
              width: 200,
              child: PngImage(name: ImageItems().appleWithoutPath),
            ),
          ),
          Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Apple-book.svg/327px-Apple-book.svg.png')
        ],
      ),
    );
  }
}

class ImageItems {
  final String appleWithBook =
      "assets/png-clipart-book-euclidean-books-and-apple-reading-green-apple.png";
  final String appleBook = "assets/png/apple_book.png";
  final String appleWithoutPath = "apple_book";
}

class PngImage extends StatelessWidget {
  const PngImage({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      _nameWithPath,
      fit: BoxFit.cover,
    );
  }

  String get _nameWithPath => 'assets/png/$name.png';
}
