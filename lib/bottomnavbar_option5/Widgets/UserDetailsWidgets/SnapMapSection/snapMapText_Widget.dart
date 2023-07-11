import 'package:flutter/material.dart';

Widget snapMapText(){
  return const Padding(padding: EdgeInsets.only(
    left: 15,
    right: 15,
    top: 20,
    bottom: 12,
  ),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Text(
        "Snap Map",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            )
      )
    ],
  ),);
}