import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/item.dart';
import '../models/Number.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({super.key});
  final List<Number> family = const [
    Number(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'one',
        enName: '1'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_two.png',
        jpName: 'two',
        enName: '2'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_three.png',
        jpName: 'three',
        enName: '3'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'four',
        enName: '4'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'five',
        enName: '5'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'six',
        enName: '6'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'seven',
        enName: '7'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'eight',
        enName: '8'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'nine',
        enName: '9'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'ten',
        enName: '10'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'eleven',
        enName: '11'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'one',
        enName: '1'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'https://picsum.photos/250?image=9',
        jpName: 'one',
        enName: '1'),
    Number(
        sound: 'number_two_sound.mp3',
        image: 'assets/images/numbers/number_eight.png',
        jpName: 'one',
        enName: '1')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text('Family Members'),
      ),
      body: ListView.builder(
        itemCount: family.length,
        itemBuilder: (context, num) {
          return Item(
            number: family[num],
            color: Colors.blueAccent,
          );
        },
      ),
    );
  }
}
