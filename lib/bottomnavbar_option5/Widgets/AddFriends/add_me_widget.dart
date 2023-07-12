import 'package:flutter/material.dart';

Widget addMe(name, username, method){
  return Padding(padding: const EdgeInsets.only(left: 15, right: 15),
  child: Container(
    color: Colors.white,
    child: Padding(
      padding: const EdgeInsets.only(top: 4, bottom: 4),
      child: Row(
        children: [
          Row(
            children: [
              Padding(padding: const EdgeInsets.only(left: 8.0),
              child: Container(
                height: 50,
                width: 50,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.purple
                ),
              ),),
              Padding(padding: const EdgeInsets.only(left: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        name,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      username,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                      ),
                    ),),
                    Padding(padding: const EdgeInsets.only(top: 4),
                    child: Text(method,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                      fontWeight: FontWeight.w600
                    ),),)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ),
  ),);
}