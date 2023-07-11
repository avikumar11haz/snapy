import 'package:flutter/material.dart';

Widget discoverSubscription_widget(String headline){
  return  Padding(padding: const EdgeInsets.only(
      right: 8
  ),
    child: Container(
      height: 50,
      width: 95,
      alignment: Alignment.bottomLeft,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 4, bottom: 4, right: 2.0),
        child: Text(
          headline,
          maxLines: 4,
          textAlign: TextAlign.left,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w700
          ),
        ),
      ),
    ),);
}