import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/AddFriends/add_friends_screen.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SearchScreen/search_screen.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/StorySection/dicoverSubscription_widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/UserDetailsWidgets/forYou_widget.dart';
import 'package:snapy/bottomnavbar_option5/settings_screen.dart';
import 'package:snapy/bottomnavbar_option5/userDetails_Screen.dart';


class Del5 extends StatefulWidget {
  const Del5({Key? key}) : super(key: key);

  @override
  State<Del5> createState() => _Del5State();
}

class _Del5State extends State<Del5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.black, titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context){

                    return const UserDetails();
                    });
              },
              child: IconButton(
                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_)=> const Settings())
                  );
                },
                  icon: Container(
                    height: 30,width: 30,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.supervised_user_circle,
                    color: Colors.black, size: 30,),
                  )),
            ),
            IconButton(
              icon: const Icon(Icons.search, color: Colors.white, size: 30,),
                onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const Search())
                );
                }, ),
            const Expanded(child: Center(
              child: Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            )
            )
        ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Row(
            children: [
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
                    left: 45,
                    right: 8,
                  ),
                  child: Icon(Icons.add_circle_outline_sharp, color: Colors.white, size: 30,),
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
            color: Colors.black,),
          ListView(padding: const EdgeInsets.only(top: 8, left: 10),children: [
            Container(
              child: const Text("Discover subscription", style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),),
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  right: 8,
                  bottom: 8,
                  top: 4,
                ),
                children: [
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              child: const Text(
                "Continue Watching",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              height: 170,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(
                  right: 8,
                  bottom: 8,
                  top: 4,
                ),
                children: [
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                  discoverSubscription_widget("The top choice to replace the depp in fantastic blueprint"),
                ],
              ),
            ),
            const SizedBox(height: 8,),
            Container(
              child: const Text(
                "For You",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.only(
              right: 10,
              top: 2,
            ),
            child: GridView.count(crossAxisCount: 2,
              childAspectRatio: 1 / 1.6,
              mainAxisSpacing: 13,
              crossAxisSpacing: 8,
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                forYou_widget("No gains are more important than these gains"),
                forYou_widget("No gains are more important than these gains"),
                forYou_widget("No gains are more important than these gains"),
                forYou_widget("No gains are more important than these gains"),
                forYou_widget("No gains are more important than these gains"),
              ],
            ),
            ),
            const SizedBox(height: 10,),
          ],
           )
        ],
      ),
    );
  }
}
