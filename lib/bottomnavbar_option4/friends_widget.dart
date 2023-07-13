import 'package:flutter/material.dart';

Widget friends(username){
  return Column(
    children: [
      Container(
        height: 85,
        width: 85,
        padding: EdgeInsets.all(3),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.yellow,
            width: 2,
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.pink,
            shape: BoxShape.circle,
          ),
        ),
      ),
      Padding(padding: const EdgeInsets.only(top: 8.0),
        child: Container(
          width: 120,
          child: Text(
            username,
            maxLines: 2,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      )
    ],
  );
}