import 'package:flutter/material.dart';

Widget myBitmoji(){
  return Align(
    child: Container(
      height: 85,
      width: 75,
      child: const Image(
        image: AssetImage("assets/image1.png"),
        fit: BoxFit.cover,
      ),
    ),
  );
}