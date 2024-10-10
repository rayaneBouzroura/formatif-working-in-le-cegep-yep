import 'package:flutter/material.dart';
import 'package:gui/page2Formatif2022.dart';
import 'package:gui/tiroir.dart';

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page 1'),
      ),
      drawer: LeTiroir(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_right),
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(context, MaterialPageRoute(builder: (c) => Page5()));
          }),
      body: Expanded(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Colors.amber,
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.green,
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Container(
                      color: Colors.blue,
                    ),
                    flex: 1,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.red,
              ),
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
