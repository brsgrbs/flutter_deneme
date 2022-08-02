import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: const Text('merhaba'),
      backgroundColor: Colors.red,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) => Container(
                    height: 200,
                  ));
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'a'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box_outlined), label: 'b'),
        ]),
      ),
    );
  }
}
