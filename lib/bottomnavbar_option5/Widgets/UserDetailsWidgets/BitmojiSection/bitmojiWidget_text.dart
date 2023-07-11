import 'package:flutter/material.dart';

Widget bitmojiText2(text){
  return Padding(padding: const EdgeInsets.only(
    left: 8,
  ),
  child: Text(
    text,
    style: const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
    ),
  ),);
}