import 'package:flutter/material.dart';

class AddFriends extends StatefulWidget {
  const AddFriends({Key? key}) : super(key: key);

  @override
  State<AddFriends> createState() => _AddFriendsState();
}

class _AddFriendsState extends State<AddFriends> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 120.0,
            floating: true,
            pinned: true,
            backgroundColor: Colors.grey[200],
            leading: IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: const Icon(Icons.arrow_back_ios, color: Colors.black,
                  ),
                ),
              ),
              onPressed: (){},
            ),
            actions: [
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                      context: context,
                      builder: (context){
                      return Padding(padding: const EdgeInsets.only(left: 15,right: 15),
                      child: Container(
                        color: Colors.transparent,
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 55,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12)
                                )
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                "Hidden from Quick Adds",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            const Divider(height: 1,),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 55,
                              color: Colors.white,
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Ignored from Add me",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600
                                  ),
                                ),
                              ),
                            ),
                            const Divider(height: 1,),
                            Container(
                              alignment: Alignment.centerLeft,
                              height: 55,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12)
                                  )
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 8.0),
                                child: Text(
                                  "Recently Added Friends",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 15,
                              color: Colors.transparent,
                            ),
                            const Divider(height: 1,),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: Container(
                                alignment: Alignment.center,
                                height: 55,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Text(
                                  "Done",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),);
                      });
                },
                child: const Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Icon(Icons.more_horiz, color: Colors.black,),
                ),
              )
            ],
            flexibleSpace: _MyAppSpace(),
          )
        ],
      ),
    );
  }
}


class _MyAppSpace extends StatelessWidget {
  const _MyAppSpace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, c){
      final settings = context
          .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
      final deltaExtent = settings!.maxExtent - settings.minExtent;
      final t = (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
      .clamp(0.0, 1.0) as double;
      final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
      const fadeEnd = 1.0;
      final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

      return Stack(
        children: [
          Center(
            child: Opacity(
              opacity: 1 - opacity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 45, right: 45, top: 24, bottom: 5
                ),
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: const Row(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 8.0, right: 8),
                           child: Icon(Icons.search, color: Colors.black,),),
                          Text("Find friends",style: TextStyle(color: Colors.grey),)
                        ],
                      ),
                      Spacer(),
                      Padding(padding: EdgeInsets.only(left: 8.0, right: 8),
                      child: Icon(Icons.contact_page,
                      color: Colors.black,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Opacity(opacity: opacity, child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              getImage(),
              Padding(padding: const EdgeInsets.only(left: 15,right: 15, bottom: 8),
               child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(18),
                ),
                 child: const Row(
                   children: [
                     Row(
                       children: [
                         Padding(padding: EdgeInsets.all(8.0),
                         child: Icon(Icons.search, color: Colors.black,),)
                       ],
                     )
                   ],
                 ),
              ),)
            ],
          ),)
        ],
      );
    });
  }
}
