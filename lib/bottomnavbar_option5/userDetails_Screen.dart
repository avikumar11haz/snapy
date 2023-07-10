
import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/addTo_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/storiesText_Widget.dart';
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
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Container(child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(padding: const EdgeInsets.only(top:18 ),
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
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
                const Padding(padding: EdgeInsets.only(top: 8),
                child: Text("callme_haz * 34,456 * U",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                ),),
                StoriesText(),
                const SizedBox(height: 4,),
                AddTo("My"),
                AddTo("Our"),
                const Padding(padding: EdgeInsets.only(top: 30),
                child: Icon(
                  Icons.gavel_sharp,
                  color: Colors.grey,
                  size: 30,
                ),),
                const Padding(padding: EdgeInsets.only(top: 15),
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
        onSwipeLeft: (context){
          Navigator.pop(context);
        },
        onSwipeRight: (context){
          Navigator.pop(context);
        },
      ),
    );
  }
}
