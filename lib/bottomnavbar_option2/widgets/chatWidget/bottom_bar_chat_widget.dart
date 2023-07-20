

import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option2/camera_screen.dart';

Widget BottomBarChat1(context) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      height: 50,
      color: Colors.red,
      child: Row(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_)=> const CameraScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.camera_alt
                      ),
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(
                left: 8.0, right: 8
              ),
              child: Container(
                width: 220,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(18)
                ),
                padding: const EdgeInsets.only(left: 15),
                child: const TextField(
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                    hintText: "Send a Chat"
                  ),
                ),
              ),)
            ],
          ),
          const Spacer(),
          const Row(
            children: [
              Padding(padding: EdgeInsets.only(
                left: 4.0, right: 4),
              child: Icon(Icons.emoji_emotions),),
              Padding(padding: EdgeInsets.only(
                left: 4.0, right: 4),
              child: Icon(Icons.image),),
              Padding(padding: EdgeInsets.only(
                  left: 4.0, right: 8),
                child: Icon(Icons.radio_button_checked),),
            ],
          )
        ],
      ),
    ),
  );
}