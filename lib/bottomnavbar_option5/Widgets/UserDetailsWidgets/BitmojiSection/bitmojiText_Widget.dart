import 'package:flutter/material.dart';

Widget BitmojiText(){
  return const Padding(padding: EdgeInsets.only(
    left: 15,
    right: 15,
    top: 20,
    bottom: 12,
  ),
    child: Row(
      children: [
        Text("Bitmoji",
        style: TextStyle(
          color: Colors.black87,
          fontSize: 22,
          fontWeight: FontWeight.w600
        ),)
      ],
    ),
  );
}