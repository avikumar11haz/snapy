
import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/addTo_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/privateStory_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/storiesText_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmojiText_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget1.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget2.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/BitmojiSection/bitmoji_Widget3.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/FriendsSection/friendsSection_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/FriendsSection/friendsText_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/SnapMapSection/snapMapText_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/SnapMapSection/snapMapWidget_Map.dart';
import 'package:snapy/bottomnavbar_option5/settings_screen.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({Key? key}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
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
            title: Padding(padding: const EdgeInsets.all(18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                  ),
                ),
                GestureDetector(
                  child: const Icon(
                    Icons.settings, color: Colors.black,
                  ),
                  onTap: (){
                    Navigator.push(
                      context, MaterialPageRoute(builder: (_) => const Settings()));
                  },
                )
              ],
            ),),
          ),
        ),
      ),
      body: SwipeDetector(
        onSwipeLeft: (offSet){
          Navigator.pop(context);
        },
        onSwipeRight: (offSet){
          Navigator.pop(context);
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(top:18.0),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    image: const DecorationImage(
                      image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTknc0m9TRX9ru56RsVnjSJi-O-vtfM9Y0cCx49eNaAMpKzDn2Oy1DzkvhiF5_M2XdJuNA&usqp=CAU"
                      ),
                      fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(20)
                  ),
                ),),
                const Padding(padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Hazer",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),),
                Padding(padding: EdgeInsets.only(top: 8),
                 child: Text("callme_haz * 34,456 * U",
                 style: TextStyle(
                  color: Colors.grey[400],
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ),),
                StoriesText(),
                const SizedBox(height: 4,),
                AddTo("My"),
                AddTo("Our"),
                PrivateStory(),
                FriendsText(),
                FriendsSection("Add Friends", Icons.supervised_user_circle),
                FriendsSection("My Friends", Icons.list_alt_outlined),
                BitmojiText(),
                bitmojiWidget1(),
                bitmojiWidget2(),
                bitmojiWidget3(),
                snapMapText(),
                snapMap_Map(context),

                const Padding(padding: EdgeInsets.only(top: 38.0),
                child: Icon(
                  Icons.gavel_sharp,
                  color: Colors.grey,
                  size: 30,
                ),),
                const Padding(padding: EdgeInsets.only(top: 15.0),
                child: Text("Joined Snapchat on 06 June 2023",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.w700
                ),
                ),),
                const SizedBox(height: 90,),
              ],
            ),
          ),),
        ),
      ),
    );
  }
}
