import 'package:flutter/material.dart';

Widget seeMyLocation(text, displayCheck) {
  return Container(
    padding: const EdgeInsets.only(
      top: 12, bottom: 12, left: 15, right: 15,
    ),
    child: Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const Spacer(),
        displayCheck
        ? Container(child: const Icon(Icons.check, color: Colors.blue,size: 30,),)
            : Container(),
      ],
    ),
  );
}