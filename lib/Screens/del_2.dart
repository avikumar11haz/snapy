import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option2/widgets/chatItemWidget/chat_item_widget.dart';
import 'package:snapy/bottomnavbar_option2/start_new_chat_screen.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/AddFriends/add_friends_screen.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SearchScreen/search_screen.dart';
import 'package:snapy/bottomnavbar_option5/userDetails_Screen.dart';


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
                    return const UserDetails();
                    });
              },
              child: IconButton(onPressed: (){
                Navigator.push(
                    context, MaterialPageRoute(builder: (_)=> const UserDetails())
                );
              },
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
              Navigator.push(context, MaterialPageRoute(builder: (_) => const Search()));
            },
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
            ),
            const Expanded(child: Center(
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
                      return const AddFriends();
                      });
                },
                child: const Padding(
                  padding: EdgeInsets.only(
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
                  MaterialPageRoute(builder: (_) => const NewChat()));
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
                        Icons.message,
                        color: Colors.grey[600],
                        size: 20,
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
            padding: const EdgeInsets.only(
              top: 8,
              left: 10
            ),
            children: <Widget>[
              chatItem(
                context, "Parteek", true, "1d", true
              ),
              const Divider(
                thickness: 0.3,
                color: Colors.grey,
              ),
              chatItem(
                context, "Ram", false, "24h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Yashi Srivastav", true, "7h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Prithu", false, "16h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Jitesh Meena", true, "4h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Pihu", true, "9h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Sejal", false, "22m", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Chirag", true, "5h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Ammie", true, "1h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Ritik", false, "6h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Kiran", true, "1m", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Ritika", false, "3h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Chandan", false, "9h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Emma", true, "20h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Ivy", true, "1d", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Aadhya", false, "4h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Avni", true, "8h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,),
              chatItem(
                  context, "Divya", false, "2h", true
              ),
              const Divider(thickness: 0.3, color: Colors.grey,)
            ],
          )
        ],
      ),
    );
  }
}
