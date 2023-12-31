import 'package:flutter/material.dart';

Widget game_mini_widget(){
  return Padding(padding: const EdgeInsets.only(right: 8.0),
  child: Container(
    width: 115,
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 0.2,
          spreadRadius: 0.1
        )
      ],
      color: Colors.white,
      borderRadius: BorderRadius.circular(10)
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        left: 4.0, bottom: 4, right: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            height: 70,
            child: Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(bottom: 8.0),
           child: Text(
            "Jenifer Ankiston is op",
            maxLines: 2,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),
          ),),
          Text(
            "Game",
            style: TextStyle(
              color: Colors.grey[350],
              fontWeight: FontWeight.w600,
              fontSize: 16
            ),
          )
        ],
      ),
    ),
  ),);
}