import 'dart:html';

import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color,this.onTap});
  String? text;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap

      ,child: Container(
          padding: EdgeInsets.only(left: 16),
          alignment: Alignment.centerLeft,
          height: 60,
          width: double.infinity,
          color: color,
          child: Text(
            text!,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          )),
    );
  }
}
