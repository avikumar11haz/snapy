import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option2/widgets/user_name_widget.dart';

class NewChat extends StatefulWidget {
  const NewChat({Key? key}) : super(key: key);

  @override
  State<NewChat> createState() => _NewChatState();
}

class _NewChatState extends State<NewChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "New Chat",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.w700
          ),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(
                Icons.cancel_outlined,
                color: Colors.black,
                size: 28,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15.0),
        child: ListView(
          children: [
            const Divider(
              thickness: 0.6,
              height: 0.5,
            ),
            const Row(
              children: [
                Text(
                  "To",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Flexible(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    autofocus: true,
                    decoration: InputDecoration(
                      hintText: "Enter name",
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),
                  ),
                ))
              ],
            ),
            Padding(padding: const EdgeInsets.only(
              bottom: 8.0
            ),
            child: Container(
              child: const Row(
                children: [
                  Padding(padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.supervised_user_circle,
                  color: Colors.blue,),
                  ),
                  Text(
                    "New Group",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),),
            const  Padding(padding: EdgeInsets.only(
              top: 12.0,
              bottom: 12),
             child: Text(
              "RECENTS",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w600,
              ),
            ),),
            usernameWidget("Haz"),
            usernameWidget("Parteek"),
            usernameWidget("Chirag"),
            usernameWidget("Jitesh"),
            usernameWidget("Abhay"),
            usernameWidget("Neha"),
            usernameWidget("Priya"),
            usernameWidget("Shukla"),
            usernameWidget("Kartik"),
            usernameWidget("Ravi"),
            usernameWidget("Faiz"),
            usernameWidget("Kavi"),
            usernameWidget("Nishant"),
            usernameWidget("Debo"),
            usernameWidget("Harshit"),
            usernameWidget("Shrusti"),
            usernameWidget("Anamika"),
            usernameWidget("Anil"),
            usernameWidget("Meena"),
          ],
        ),
      ),
    );
  }
}
