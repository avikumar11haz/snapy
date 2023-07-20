import 'package:flutter/material.dart';

Widget twoItems(text1, text2){
  return Container(
    padding: const EdgeInsets.only(
      left: 15,
      top: 12,
      right: 15,
      bottom: 12,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text1,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
        Text(
          text2,
          style: TextStyle(
            color: Colors.grey[350]
          ),
        )
      ],
    ),
  );
}