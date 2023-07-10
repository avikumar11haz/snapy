import 'package:flutter/material.dart';

Widget AddTo(text){
  return Padding(padding: EdgeInsets.only(
    left: 15,
    right: 15,
    top: 8,
  ),
  child: Container(
    height: 60,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [
        BoxShadow(
        color: Colors.black,
        offset: Offset(0, 2),
        blurRadius: 1,
        spreadRadius: 1
      ),],
    ),
    child: const Row(
      children: [
        Padding(padding: EdgeInsets.only(left: 8,),
        child: Icon(Icons.camera_alt_outlined,
        color: Colors.blue,
        size: 36,),
        ),
        Padding(padding: EdgeInsets.only(left: 8),
        child: Text(
          "Add to $text Story",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),)
      ],
    ),
    Spacer(),
    Padding(padding: EdgeInsets.only(right: 8),
    child: Icon(Icons.more_horiz, color: Colors.grey, size: 30,),
    ),


  ),);
}