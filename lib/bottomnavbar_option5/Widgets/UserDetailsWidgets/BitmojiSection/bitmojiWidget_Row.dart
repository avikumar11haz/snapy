import 'package:flutter/material.dart';

Widget bitmojiRow(displayNew){
  return Row(
    children: [
      displayNew?
          Container(
            child: Padding(
              padding: EdgeInsets.only(
                left: 12, right: 12, top: 6, bottom: 6,
              ),
              child: Text(
                "NEW",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
            ),
          )
          : Container(),
      Padding(padding: const EdgeInsets.only(right: 8, left: 8),
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey[350],
            size: 30,
          ),)
    ],
  );
}