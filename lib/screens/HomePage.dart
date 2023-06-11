import 'package:flutter/material.dart';
import 'package:language_app/screens/NumbersPage.dart';

import '../components/Category_item.dart';
import 'Family_Members.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor: const Color(0xff46322B),
      ),
      body: Column(
        children: [
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (BuildContext context) {
                  return const NumbersPage();
                },
              ));
            },
            text: 'Number',
            color: Colors.blueAccent,
          ),
          Category(
            text: 'Family Members',
            color: Colors.red,
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const FamilyMembers();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: Colors.green,
          ),
          Category(
            text: 'Phrases',
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
