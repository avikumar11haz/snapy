import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  FocusNode inputNode = FocusNode();
  void openKeyboard(){
    FocusScope.of(context).requestFocus(inputNode);
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Expanded(child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(18)
              ),
              child: TextField(
                focusNode: inputNode,
                autofocus: true,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  prefixIcon: Icon(Icons.search,
                  color: Colors.black,
                  size: 32,),
                  hintText: "Search",
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  )
                ),
              ),
            )),
            GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: const Padding(
                padding: EdgeInsets.only(left: 8),
                child:  Text(           //container
                  "Cancel",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

            )
          ],
        ),
      ),
      body: Container(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
            top: 20
          ),
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      "Recents",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 18
                      ),
                    ),
                  ),
                  Container(
                    child: const Text(
                      "Clear All",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 18
                      ),
                    ),
                  )
                ],
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
                    // TODO: recentItem widget
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 16.0, top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: const Text(
                      "Games & Minis",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),),
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // storyWidget(false),
                        // userName(context),
                        // Spacer(),
                        // subcribeWidget(true),
                      ],
                    ),
                ),
              ),
              Divider(height: 0.25, color: Colors.grey[350],),
              //2
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // storyWidget(false),
                      // userName(context),
                      // Spacer(),
                      // subcribeWidget(true),
                    ],
                  ),
                ),
              ),
              Divider(height: 0.25, color: Colors.grey[350],),
              //3
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // storyWidget(false),
                      // userName(context),
                      // Spacer(),
                      // subcribeWidget(true),
                    ],
                  ),
                ),
              ),
              Divider(height: 0.25, color: Colors.grey[350],),
              // Done
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("View More",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),)
                    ],
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 16.0, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Trending Lenses",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        child: const Text(
                          "Explore Lenses",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                          ),
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                    ],
                  )
                ],
              ),),
              // 1
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // storyWidget(true),
                      // trendingLenses_userName(context)
                    ],
                  ),
                ),
              ),

              Divider(height: 0.25, color: Colors.grey[350],),

              //2
              Container(
                height: 65,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // storyWidget(true),
                      // trendingLenses_userName(context)
                    ],
                  ),
                ),
              ),

              Divider(height: 0.25, color: Colors.grey[350],),

              //3
              Container(
                height: 65,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    // borderRadius: BorderRadius.only(
                    //     topLeft: Radius.circular(12),
                    //     topRight: Radius.circular(12)
                    // )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // storyWidget(true),
                      // trendingLenses_userName(context)
                    ],
                  ),
                ),
              ),

              Divider(height: 0.25, color: Colors.grey[350],),

              //Done
              Container(
                height: 45,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)
                    )
                ),
                child: const Padding(
                  padding: EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "View More",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
