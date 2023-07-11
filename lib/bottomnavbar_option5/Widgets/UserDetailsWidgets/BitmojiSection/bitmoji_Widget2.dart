import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Icon.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Row.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_text.dart';

Widget bitmojiWidget2(){
  return Padding(padding: const EdgeInsets.only(
      left: 15, right: 15,
  ),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black38,
              offset: Offset(0, 2),
              blurRadius: 1,
              spreadRadius: 1,
            )
          ]
      ),
      child: Row(
        children: [
          Row(
            children: [
              bitmojiIcon(Icons.edit),
              bitmojiText2("Edit My Bitmoji"),
            ],
          ),
          const Spacer(),
          bitmojiRow(false),
        ],
      ),

    ),);
}