import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Icon.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Row.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_text.dart';

Widget bitmojiWidget3(){
  return Padding(padding: const EdgeInsets.only(
    left: 15, right: 15,
  ),
    child: Container(
      height: 60,
      decoration:const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12)
          ),
          boxShadow: [
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
              bitmojiIcon(Icons.supervised_user_circle),
              bitmojiText2("Select Selfie"),
            ],
          ),
          const Spacer(),
          bitmojiRow(false),
        ],
      ),

    ),);
}