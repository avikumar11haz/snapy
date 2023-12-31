import 'package:flutter/material.dart';

Widget usernameWidget(name) {
  return Padding(padding: const EdgeInsets.only(
    top: 10, bottom: 10,
  ),
  child: Text(
    name,
    style: const TextStyle(
      color: Colors.black,
      fontSize: 17,
      letterSpacing: 0.5,
      fontWeight: FontWeight.w600,
    ),
  ),);
}