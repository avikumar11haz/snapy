import 'package:flutter/material.dart';
import 'package:flutter_swipe_detector/flutter_swipe_detector.dart';

class MapSettings extends StatefulWidget {
  const MapSettings({Key? key}) : super(key: key);

  @override
  State<MapSettings> createState() => _MapSettingsState();
}

class _MapSettingsState extends State<MapSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: AppBar(
            centerTitle: true,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
                size: 30,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
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
          child: Container(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey[350],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0, bottom: 8
                      ),
                      child: Text(
                        "Your location updates when you have snapchat open",
                        style: TextStyle(
                          color: Colors.grey[600]
                        ),
                      ),
                    ),
                  ),
                  ghostModeItemMaoSettings(),
                  settingsHeading(context, "who can see my location"),
                  seeMyLocation("My Friends, true"),
                  seeMyLocation("My Friends, Except ...", false),
                  seeMyLocation("Only These Friends ...", false),
                  settingsHeading(context, "Bitmoji"),
                  bitmojiItemMapSettings(),
                  const SizedBox(height: 90,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
