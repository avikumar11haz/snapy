import 'package:flutter/material.dart';

Widget moreItemsStoryNotifications(text1){
  bool isSwitched =false;
  return Container(
    alignment: Alignment.centerLeft,
    height: 55,
    decoration: const BoxDecoration(
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text1,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Switch(
              value: isSwitched,
              onChanged: (value){},
          activeTrackColor: Colors.lightGreenAccent,
          activeColor: Colors.green,)
        ],
      ),
    ),
  );
}