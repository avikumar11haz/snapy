import 'package:flutter/material.dart';

Widget trendingLenses_userName(context){
  return Padding(padding: const EdgeInsets.only(left: 8.0),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            child: const Text(
              "Dog Lens",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
          )
        ],
      ),
      Text("Snapchat",
      style: TextStyle(
        color: Colors.grey[350],
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),)
    ],
  ),);
}