import 'package:flutter/material.dart';

Widget settingsHeading(context, text) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[350]
    ),
    width: MediaQuery.of(context).size.width,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.blue,
          fontSize: 16,
          fontWeight: FontWeight.w600
        ),
      ),
    ),
  );
}