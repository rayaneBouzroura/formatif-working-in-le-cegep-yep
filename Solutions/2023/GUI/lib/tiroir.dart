import 'package:flutter/material.dart';
import 'package:gui/page1Formatif2022.dart';
import 'package:gui/page2Formatif2022.dart';
import 'package:gui/s1.dart';
import 'package:gui/s2.dart';
import 'package:gui/s3.dart';

class LeTiroir extends StatefulWidget {
  const LeTiroir({super.key});

  @override
  State<LeTiroir> createState() => LeTiroirState();
}

class LeTiroirState extends State<LeTiroir> {
  @override
  Widget build(BuildContext context) {
    var listView = ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          height: 200,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 80, horizontal: 10),
            child: Text("prénom et matricule"),
          ),
        ),
        ExpansionTile(
          title: Text('formatif 2023'),
          children: [
            ListTile(
              dense: true,
              leading: const Icon(Icons.ac_unit),
              title: const Text("Am"),
              onTap: () {
                // TODO ferme le tiroir de navigation
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ),
                );
                // Then close the drawer
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.ac_unit),
              title: const Text("Stram"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ),
                );
                // Then close the drawer
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.ac_unit),
              title: const Text("Gram"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page3(),
                  ),
                );
                // Then close the drawer
              },
            ),
          ],
        ),
        ExpansionTile(
          title: Text('formatif 2024'),
          children: [
            ListTile(
              dense: true,
              leading: const Icon(Icons.ac_unit),
              title: const Text("Ecran 1"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page4(),
                  ),
                );
                // Then close the drawer
              },
            ),
            ListTile(
              dense: true,
              leading: const Icon(Icons.ac_unit),
              title: const Text("Yapalooza"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Page5(),
                  ),
                );
                // Then close the drawer
              },
            ),
          ],
        )
      ],
    );

    return Drawer(
      child: Container(
        color: const Color(0xFFFFFFFF),
        child: listView,
      ),
    );
  }
}
