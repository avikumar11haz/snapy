import 'package:flutter/material.dart';

Widget StoriesText() {
  return  Padding(padding: const EdgeInsets.only(left: 15,
      right: 15,
      top: 28,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text("Stories",
            style: TextStyle(
              color: Colors.black,fontSize: 18,
              fontWeight: FontWeight.w700
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(24)
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 12,right: 12,top: 6,bottom: 6),
                child: Text(
                  "+ Private Story",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
            ),
          )
        ],
    ),
  );
}