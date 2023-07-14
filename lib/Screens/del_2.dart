import 'package:flutter/material.dart';


class Del2 extends StatefulWidget {
  const Del2({Key? key}) : super(key: key);

  @override
  State<Del2> createState() => _Del2State();
}

class _Del2State extends State<Del2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context){
                    return userDetails();
                    });
              },
              child: IconButton(onPressed: (){},
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => Search()));
            },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
            ),
            Expanded(child: Center(
              child: Text(
                "Chat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ))
          ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: <Widget>[
          Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                      context: context,
                      builder: (context){
                      return addFriends();
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 45, right: 8.0,
                  ),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_) => NewChat()));
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
