import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_app/models/Number.dart';

class Item extends StatelessWidget {
  const Item({required this.number ,required this.color});
  final Number number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      height: 80,
      child: Row(children: [
        //Image.asset('assets/images/numbers/number_eight.png')
        Container(color: Colors.black, child: Image.network(number.image)),
        const Spacer(
          flex: 1,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.jpName,
              style: const TextStyle(color: Colors.white, fontSize: 18),
            ),
            Text(number.image,
                style: const TextStyle(color: Colors.white, fontSize: 18)),
          ],
        ),
        const Spacer(
          flex: 10,
        ),
        // Padding(
        //   padding: EdgeInsets.only(right: 16),
        //   child: GestureDetector(
        //     onTap: () {
        //       print('object');
        //     },
        //     child: Icon(Icons.play_arrow_outlined),
        //   ),
        // ),
        IconButton(
            onPressed: () {
              AudioCache player = AudioCache(prefix: 'assets/sounds/colors/');
              player.play(number.sound);
            },
            icon: Icon(Icons.play_arrow_outlined))
      ]),
    );
  }
}
