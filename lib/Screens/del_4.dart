import 'package:flutter/material.dart';


class Del4 extends StatefulWidget {
  const Del4({Key? key}) : super(key: key);

  @override
  State<Del4> createState() => _Del4State();
}

class _Del4State extends State<Del4> {
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
              child: IconButton(
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.supervised_user_circle_outlined,
                  color: Colors.black,
                  size: 30,),
                ),
              ),
            ),
            IconButton(onPressed: onPressed,
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                )),
            Expanded(child: Center(
              child: Text(
                "Stories",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
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
                  padding: const EdgeInsets.only(left: 45, right: 8.0),
                  child: Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context){
                      return Padding(padding: const EdgeInsets.only(),
                      child: Container(
                        color: Colors.transparent,
                        height: 160,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(12),
                                  topLeft: Radius.circular(12),
                                )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Manage Subscription and Notification",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(height: 0.35,),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                // borderRadius: BorderRadius.only(
                                // )
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "View Hidden Channels",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                            const Divider(height: 0.35,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "Done",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),);
                      });
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 0, right: 8.0),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.black,
          ),
          ListView(
            padding: const EdgeInsets.only(top: 8, left: 10),
            children: <Widget>[
              friendsMyStory(),
              Container(
                height: 145,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.only(
                    right: 0,
                    bottom: 8,
                    top: 4
                  ),
                  children: <Widget>[
                    friends("parteek39"),
                    friends("chirag15"),
                    friends("Debo16"),
                    friends("Jitesh26"),
                    friends("Abhay2"),
                    friends("Nishant37"),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  print("Pushed");
                  Navigator.push(context,
                  MaterialPageRoute(builder: (_)=> subscriptionScreen(),
                  ),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      child: Text(
                        "Subscriptions",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
