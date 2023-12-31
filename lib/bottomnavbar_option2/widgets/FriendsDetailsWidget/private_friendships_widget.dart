import 'package:flutter/material.dart';

Widget friendshipsPrivate(context){
  return Padding(padding: const EdgeInsets.only(
    left: 15, right: 15
  ),
  child: Container(
    height: 90,
    decoration: BoxDecoration(
      color: Colors.pink,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(padding: const EdgeInsets.only(left: 15.0),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.yellow,
          ),
        ),),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Friendships are private",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.w600
              ),
            ),
            Padding(padding: const EdgeInsets.only(right: 8.0, top: 12),
            child: Container(
              width: MediaQuery.of(context).size.width / 1.9,
              child: const Text(
                "Screensooting friendsip profiles wiil sending",
                maxLines: 3,
                style: TextStyle(
                  height: 1.2,
                  letterSpacing: 0.6,
                  color: Colors.grey,
                  fontSize: 13,
                ),
              ),
            ),)
          ],
        ),
        const Padding(padding: EdgeInsets.only(right: 15.0),
        child: Icon(Icons.cancel_outlined,
        color: Colors.grey,
        ),)
      ],
    ),
  ),);
}