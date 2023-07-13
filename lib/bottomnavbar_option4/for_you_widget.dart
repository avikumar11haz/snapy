import 'package:flutter/material.dart';

Widget forYou_widget(String headline, isVerified){
  return Container(
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4)
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 6, bottom: 6, right: 2.0),
      child: Column(
        children: [
          Text(
            headline,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w700,
                height: 1.4
            ),
          ),
        ],
      ),
    ),
  );
}