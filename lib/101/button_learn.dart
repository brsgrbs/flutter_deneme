import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({Key? key}) : super(key: key);

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Text('Save', style: Theme.of(context).textTheme.titleMedium),
          ),
          ElevatedButton(onPressed: () {}, child: const Text('data')),
          IconButton(onPressed: () {}, icon: const Icon(Icons.account_balance_rounded)),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          OutlinedButton(onPressed: () {}, child: const Text('data')),
          InkWell(onTap: () {}, child: const Text('buton')),
          Container(
            height: 200,
            color: Colors.white,
          ),
          const SizedBox(height: 10),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
              ),
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20, right: 40, left: 40),
                child: Text('Place Bid', style: Theme.of(context).textTheme.headlineSmall),
              )),
        ],
      ),
    );
  }
}
