import 'package:flutter/material.dart';

Widget FriendsText(){
  return const Padding(padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 12),
  child: Row(
    children: [
      Text("Friends",style: TextStyle(
        color: Colors.black87,
        fontWeight: FontWeight.w600,
        fontSize: 22,
      ),)
    ],
  ),);
}