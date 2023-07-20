import 'package:flutter/material.dart';

Widget moreItemsTwoText(text1, text2){
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
              fontWeight: FontWeight.w600
            ),
          ),
          Text(
            text2,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.w600
            ),
          )
        ],
      ),
    ),
  );
}