import 'package:flutter/material.dart';

Widget categoryHeading(context, text){
  return Padding(padding: const EdgeInsets.only(top: 8),
  child: Container(
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(8),
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 15,
        top: 6,
        bottom: 6,
      ),
      child: Text(text, style: const TextStyle(color: Colors.grey, fontSize: 13, fontWeight: FontWeight.w500),),
    ),
  ),);
}