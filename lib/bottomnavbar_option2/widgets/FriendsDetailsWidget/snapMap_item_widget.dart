import 'package:flutter/material.dart';

Widget snapMapItem(){
  return Padding(padding: const EdgeInsets.only(
    left: 15, right: 15),
    child: Column(
      children: [
        Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            )
          ),
          child: const Row(
            children: [
              Padding(padding: EdgeInsets.only(
                left: 8.0, right: 8),
                child: Icon(
                  Icons.pin_drop_sharp,
                  color: Colors.grey,
                  size: 30,
                ),
              ),
              Text(
                "Ask for a location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 60,
          decoration: const BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12)
            )
          ),
          child: const Row(
            children: [
              Padding(padding: EdgeInsets.only(
                left: 8.0, right: 8),
              child: Icon(
                Icons.pin_drop_outlined,
                color: Colors.grey,
                size: 30,
              ),),
              Text(
                "Send My Location",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}