import 'package:flutter/material.dart';

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Yapalooza'),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.white,
          child: Container(
            color: Colors.green,
            margin: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FilledButton(
                    style: FilledButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {},
                    child: Text(
                      'l espace truc btn et text est le meme ',
                      style: TextStyle(color: Colors.black),
                    )),
                Text('Text au milieu'),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.amber,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4))),
                    onPressed: () {},
                    child: Text(
                      style: TextStyle(color: Colors.black),
                      'pipo popi',
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
