import 'package:flutter/material.dart';

Widget PrivateStory(){
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
    child: Container(
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(
              0, 2
            ),
            blurRadius: 1,
            spreadRadius: 2
          )
        ]
      ),
      child: const Row(
        children: [
          Row(
            children: [
              Padding(padding: EdgeInsets.only(
                top: 8, right: 6,
              ),
              child: Icon(Icons.lock_outline,
              color: Colors.grey,
              size: 30,),),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 0),
                    child: Text(
                      "Create a Private Story",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 4),
                    child: Text(
                      "A Story for a specific friend to see!",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey
                      ),
                    ),)
                ],
              )
            ],
          ),
          Spacer(),
          Padding(padding: EdgeInsets.only(right: 8),
          child: Icon(Icons.cancel_outlined,
          color: Colors.grey,
          size: 30,),)
        ],
      ),
    ),
  );
}