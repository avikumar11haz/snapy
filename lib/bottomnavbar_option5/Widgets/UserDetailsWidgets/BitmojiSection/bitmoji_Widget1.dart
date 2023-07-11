import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Icon.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_Row.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiWidget_text.dart';

Widget bitmojiWidget1(){
  return Padding(padding: const EdgeInsets.only(
    left: 15, right: 15, top: 8
  ),
  child: Container(
    height: 60,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
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
            //TODO: Bitmoji Icon
            bitmojiIcon(Icons.shopping_cart),
            //TODO: BitmojiText2
            bitmojiText2("Change My Outfit"),
          ],
        ),
        Spacer(),
        // TODO: bitmoji Row
        bitmojiRow(true),
      ],
    ),

  ),);
}