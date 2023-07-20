import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:snapy/bottomnavbar_option2/widgets/FriendsDetailsWidget/charm_item_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/FriendsDetailsWidget/chat_attachments_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/FriendsDetailsWidget/private_friendships_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/FriendsDetailsWidget/saved_inchat_item_widget.dart';
import 'package:snapy/bottomnavbar_option2/widgets/FriendsDetailsWidget/snap_map_text_widget.dart';

class FriendsDetails extends StatefulWidget {
  const FriendsDetails({Key? key}) : super(key: key);

  @override
  State<FriendsDetails> createState() => _FriendsDetailsState();
}

class _FriendsDetailsState extends State<FriendsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 5,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      const Padding(padding: EdgeInsets.only(
                        left: 8.0, right: 8),
                       child: Icon(
                        Icons.supervised_user_circle,
                        color: Colors.blue,
                        size: 30,
                      ),),
                      GestureDetector(
                        onTap: (){
                          showModalBottomSheet(
                            isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context){
                              return Padding(padding: const EdgeInsets.only(
                                left: 0, right: 0),
                              child: Container(
                                color: Colors.transparent,
                                height: 673,
                                child: Column(
                                  children: [
                                    moreItems("Report", Colors.red, true),
                                    const Divider(height: 1,),
                                    moreItems("Block", Colors.red, true),
                                    const Divider(height: 1,),
                                    moreItems("Remove Friend", Colors.red, true),
                                    const Divider(height: 1,),
                                    moreItems("Edit Name", Colors.red, true),
                                    Divider(height: 1,),
                                    moreItems("Clear Conversation", Colors.red, true),
                                    Divider(height: 1,),
                                    moreItemsTwoText("Delete Chats", "24 Hours after Viewing"),
                                    Divider(height: 1,),
                                    moreItemsTwoText("Message Notifications", "All Messages"),
                                    Divider(height: 1,),
                                    moreItems("Mute Game and Mini Notifications", Colors.black, false),
                                    Divider(height: 1,),
                                    moreItemsStoryNotification("Story Notification"),
                                    Divider(height: 1,),
                                    moreItems("Mute Story", Colors.black, false),
                                    Divider(height: 1,),
                                    moreItemsSendUsername("Send Username"),
                                    Divider(height: 1,),
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 55,
                                        decoration: const BoxDecoration(
                                          color: Colors.white,
                                        ),
                                        child: const Text(
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
                        child: const Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 30,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SwipeDetector(
        onSwipeLeft: (offset){
          Navigator.pop(context);
        },
        onSwipeRight: (offset){
          Navigator.pop(context);
        },
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 18.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          shape: BoxShape.circle
                        ),
                      ),),
                      Padding(padding: const EdgeInsets.only(top: 15),
                      child: Text(
                        "Haz",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 24,
                          fontWeight: FontWeight.w700
                        ),
                      ),),
                      Padding(padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "f_101 * 28,919 * T",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),
                      ),),
                      const Padding(padding: EdgeInsets.only(
                        top: 30.0, bottom: 15),
                       child: Text(
                        "34 KM away",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600
                        ),
                      ),),
                      friendshipsPrivate(context),
                      snapMapText1("Snap Map"),
                      const SizedBox(height: 4,),
                      snapMapItem(),
                      snapMapText1("Saved in Chat"),
                      Padding(padding: const EdgeInsets.only(
                        left: 15, right: 15),
                        child: Container(
                          height: 160,
                          decoration: BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1,
                                spreadRadius: 2,
                                offset: Offset(
                                  0, 1
                                )
                              )
                            ]
                          ),
                          child: Row(
                            children: [
                              savedInChatItem(),
                              savedInChatItem(),
                              savedInChatItem(),
                              savedInChatItem(),
                              savedInChatItem(),
                            ],
                          ),
                        ),
                      ),
                      snapMapText1("Chat Attachment"),
                      chatAttachment(),
                      snapMapText1("Charms"),
                      Padding(padding: const EdgeInsets.only(
                        left: 15.0),
                       child: Container(
                        height: 150,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            charmItem(),
                            charmItem(),
                            charmItem(),
                            charmItem(),
                            charmItem(),
                            charmItem(),
                            charmItem(),
                          ],
                        ),
                      ),),
                      const Padding(padding: EdgeInsets.only(
                        top: 38.0),
                       child: Icon(
                        Icons.gavel_sharp,
                        color: Colors.grey,
                        size: 30,
                      ),),
                      const Padding(padding: EdgeInsets.only(
                        top: 15.0),
                       child: Text(
                        "Friends with Haz since 31st May 2023",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),),
                      const SizedBox(height: 75,),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
