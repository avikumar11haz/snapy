import 'package:flutter/material.dart';

Widget recentItem_widget(){
  return Padding(padding: const EdgeInsets.only(right: 8),
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
      padding: const EdgeInsets.only(left: 4.0, bottom: 4, right: 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           Container(
             height: 70,
             alignment: Alignment.center,
             child: Stack(
               alignment: Alignment.bottomRight,
               children: [
                 Container(
                   height: 60,
                   width: 60,
                   decoration: const BoxDecoration(
                     color: Colors.blue,
                     shape: BoxShape.circle,
                   ),
                 ),
                 Container(
                   height: 20,
                   width: 20,
                   decoration: BoxDecoration(
                     border: Border.all(color: Colors.white, width: 2),
                     color: Colors.black,
                     image: const DecorationImage(
                       image: NetworkImage(
                         "https://vectorified.com/images/snapchat-icon-png-35.png",
                       ),
                       fit: BoxFit.cover
                     ),
                     shape: BoxShape.circle,
                   ),
                 )
               ],
             ),
           ),
          const Padding(padding: EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Jenifer ankiston is op",
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.fade,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w700
            ),
          ),),
          Container(
            width: 85,
            height: 30,
            decoration: BoxDecoration(
              color: Colors.grey[350]?.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12)
            ),
            child: const Icon(Icons.bookmark, color: Colors.black,),
          )
        ],
      ),
    ),
  ),);
}