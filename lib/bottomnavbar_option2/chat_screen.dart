import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option2/widgets/bottom_bar_chat_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/chat_message_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/date_widget.dart';
import 'package:snapy/bottomnavbar_option2/friends_details_screen.dart';

class Chat extends StatefulWidget {

  Chat({Key? key, required this.name}) : super(key: key);
  String name;
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          widget.name,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 22,
          ),
        ),
        leading: GestureDetector(
          onTap: (){
            showModalBottomSheet(
              isScrollControlled: true,
                context: context,
                builder: (context){
                return const FriendsDetails();
                });
          },
          child: Container(
            height: 24,
            width: 24,
            decoration: const BoxDecoration(
              shape: BoxShape.circle
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Row(
            children: [
              Container(
                height: 35,
                width: 50,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(18),
                    topLeft: Radius.circular(18)
                  )
                ),
                child: Center(
                  child: Icon(
                    Icons.call,
                    color: Colors.black,
                    size: 26,
                  ),
                ),
              ),
              const SizedBox(width: 1.5,),
              Container(
                height: 35,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: const BorderRadius.only(
                    bottomRight: Radius.circular(18),
                    topRight: Radius.circular(18),
                  )
                ),
                child: Center(
                  child: Icon(
                    Icons.video_call,
                    size: 26,
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              date("15 July 2023"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              date("16 July 2023"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              date("18 July 2023"),
              chatMessage(context, Colors.red, "Hey how are you?"),
              chatMessage(context, Colors.blue,
                  "I am fine. what about you long time no see i am feeling very sorry"),
              chatMessage(context, Colors.red,
                  "I am also fine. You also long time no see me."),
              chatMessage(
                  context, Colors.blue, "this chat is kind of annoying"),
              date("Today"),
              const SizedBox(height: 90)
            ],
          ),
          BottomBarChat1(context),
        ],
      ),
    );
  }
}
