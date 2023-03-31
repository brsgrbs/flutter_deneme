import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            FittedBox(
              child: Text(
                'Merhaba',
                style: Theme.of(context).textTheme.displayLarge,
                maxLines: 1,
              ),
            ),
            Container(
              color: Colors.red,
              height: 300,
            ),
            const Divider(
              height: 50,
            ),
            SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                    ),
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                    ),
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                  ],
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close)),
            FittedBox(
              child: Text(
                'Merhaba',
                style: Theme.of(context).textTheme.displayLarge,
                maxLines: 1,
              ),
            ),
            Container(
              color: Colors.red,
              height: 300,
            ),
            const Divider(
              height: 50,
            ),
            SizedBox(
                height: 300,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                    ),
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                    Container(
                      color: Colors.green,
                      width: 100,
                    ),
                    Container(
                      color: Colors.white,
                      width: 100,
                    ),
                  ],
                )),
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ));
  }
}
