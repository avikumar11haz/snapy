import 'package:flutter/material.dart';

Widget charmItem(){
  return Padding(padding: const EdgeInsets.only(
    right: 8.0, top: 6, bottom: 4, left: 2
  ),
  child: Container(
    height: 130,
    width: 130,
    decoration: BoxDecoration(
      boxShadow: const [
        BoxShadow(
          color: Colors.grey,
          spreadRadius: 2,
          blurRadius: 2,
          offset: Offset(0, 1)
        )
      ],
      color: Colors.yellow,
      borderRadius: BorderRadius.circular(18),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Padding(padding: const EdgeInsets.all(6.0),
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8)
              ),
            ),),
            Container(
              height: 20,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "New",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            )
          ],
        ),
        const Padding(padding: EdgeInsets.only(top: 4.0),
        child: Text(
          "Sum Sign Compatibility",
          textAlign: TextAlign.center,
        ),)
      ],
    ),
  ),);
}