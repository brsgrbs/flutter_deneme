import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: ListTile(
                title: const RandomImage(),
                contentPadding: EdgeInsets.zero,
                onTap: () {},
                subtitle: const Text('how do you use your card'),
                leading: const Icon(Icons.money),
                trailing: const Icon(Icons.chevron_right),
              ),
            ),
          )
        ],
      ),
    );
  }
}
