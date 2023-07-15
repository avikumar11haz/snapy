import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option2/chat_message_widget.dart';
import 'package:snapy/bottomnavbar_option2/date_widget.dart';

class Chat extends StatefulWidget {
  String name;
  Chat({Key? key, required this.name}) : super(key: key);

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
                return FriendDetails();
                });
          },
          child: Container(
            height: 24,
            width: 24,
            decoration: BoxDecoration(
              shape: BoxShape.circle
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Container(
                decoration: BoxDecoration(
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
                  borderRadius: BorderRadius.only(
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
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.red, "How are You?"),
              date("15 July 2023"),
              chatMessage(context, Colors.blue, "How are You?"),
            ],
          ),
          //bottomBarChat1(context),
        ],
      ),
    );
  }
}
