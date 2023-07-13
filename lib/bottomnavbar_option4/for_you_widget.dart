import 'package:flutter/material.dart';

Widget forYou_widget(String headline, isVerified){
  return Container(
    alignment: Alignment.bottomLeft,
    decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(4)
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 6, bottom: 6, right: 2.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headline,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: Colors.white,
                fontSize: 21,
                fontWeight: FontWeight.w700,
                height: 1.4
            ),
          ),
          Padding(padding: EdgeInsets.only(
            left: 4,
            bottom: 2,
            top: 2
          ),
            child: Row(
              children: [
                isVerified
                ? Container(
                  height: 14,
                  width: 14,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.yellow,
                  ),
                  child: const Icon(Icons.star,
                  color: Colors.black,
                  size: 12,),
                )
                    : Container(),
                Padding(padding: isVerified
                ? const EdgeInsets.only(left: 4)
                : const EdgeInsets.only(left: 0),
                child: Text(
                  "Today",
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),)
              ],
            ),
          )
        ],
      ),
    ),
  );
}