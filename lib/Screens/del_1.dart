import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:snapy/bottomnavbar_option1/mapSettings_Screen.dart';
import 'package:snapy/bottomnavbar_option1/updateYourBitmoji_Screen.dart';
import 'package:snapy/bottomnavbar_option1/widgets/friendsBottomBar_widget.dart';
import 'package:snapy/bottomnavbar_option1/widgets/myBitmojiBottomNavbar_widget.dart';
import 'package:snapy/bottomnavbar_option1/widgets/myBitmoji_widget.dart';
import 'package:snapy/bottomnavbar_option1/widgets/navigationBottomBar_widget.dart';
import 'dart:collection';

import 'package:snapy/bottomnavbar_option5/Widgets/SearchScreen/search_screen.dart';
import 'package:snapy/bottomnavbar_option5/userDetails_Screen.dart';

class Del1 extends StatefulWidget {
  const Del1({Key? key}) : super(key: key);

  @override
  State<Del1> createState() => _Del1State();
}

class _Del1State extends State<Del1> {
  Set<Circle> _circles = HashSet<Circle>();
  bool _showMapStyle = false;

  late GoogleMapController _mapController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _setCircles();
  }

  void _setCircles(){
    _circles.add(
      Circle(
        circleId: CircleId("0"),
        center: LatLng(37.76493, -122.424332),
        radius: 1000,
        strokeWidth: 2,
        fillColor: Color.fromRGBO(102, 51, 153, 0.5)
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(25.151100, 75.831720),
              zoom: 12,
            ),
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),
          GestureDetector(
            onTap: (){
              showModalBottomSheet(
                  context: context,
                  builder: (context){
                    return const UpdateYourBitmoji();
                  });
            },
            child: myBitmoji(),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black87,
                    Colors.transparent,
                  ],
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
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
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 8.0, right: 4, top: 8
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black38,
                          ),
                          child: const Icon(
                            Icons.supervised_user_circle,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => const Search()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 4, right: 4, top: 8.0,
                        ),
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black38
                          ),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 4, top: 8.0),
                    child: Container(
                      child: Text(
                        "Srikar",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),
                      ),
                    ),),
                    const Spacer(),
                    GestureDetector(
                      onTap: (){
                        showModalBottomSheet(
                          isScrollControlled: true,
                            context: context,
                            builder: (context){
                            return const MapSettings();
                            });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black38,
                        ),
                        child: const Icon(
                          Icons.settings,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myBitmojiBottomNavBar(),
                  navigationBottomNavBar(),
                  friendsBottomNavBar()
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
