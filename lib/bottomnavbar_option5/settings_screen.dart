import 'dart:math';

import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SettingsWidgets/category_heading_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SettingsWidgets/singleItem_Widget.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SettingsWidgets/twoItems_Widgets.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
          color: Colors.green,),
          onPressed: ()=> Navigator.pop(context),
        ),
        title: const Text("Settings",
        style: TextStyle(
          color: Colors.green,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              categoryHeading(context, "MY ACCOUNT"),
              twoItems("Name", "Haz"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 12,
                  bottom: 12,
                ),
                child:const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Text(
                      "Username",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "Hazer",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.grey,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Birthday", "30/11/2003"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Mobile Number", "123*****89"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
                ),
              twoItems("Email", "demo@**8.com"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              // TODO: Single Item
              singleItem("Password"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Two-Factor Authentication"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Connected Apps"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Notification"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Bitmoji"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Ram"),
              const Divider(
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),singleItem("Apps from Snap"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Language"),
              categoryHeading(context, "ADDITIONAL SERVICES"),
              singleItem("Manage"),
              categoryHeading(context, "WHO CAN..."),
              twoItems("Contact Me", "Everyone"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Use My Cameos Selfie", "Only Me"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Send me Notifications"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Visit My Story", "Everyone"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("See Me in Quick Add"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("See My Location"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Memories"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Speactacles"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Customise Emojis"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Ads"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Data Saver"),
              categoryHeading(context, "PRIVACY"),
              singleItem("Clear Conversation"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear Search History"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear Top Location"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Contact Syncing"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Our Story Snaps"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Permissions"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("My Data"),
              categoryHeading(context, "SUPPORT"),
              singleItem("I Need Help"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I have a privacy Question"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              categoryHeading(context, "FEEDBACK"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I Spotted a BUG"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I have a Suggestion"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Shape To Report"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              categoryHeading(context, "MORE INFORMATION"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Privacy Policy"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Safety Centre"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Terms of Service"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),singleItem("Other Legal"),
              categoryHeading(context, "ACCOUNT ACTIONS"),
              singleItem("Clear Cache"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),singleItem("Clear Lens Data"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear My Cameos Selfie"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Blocked"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Log Out"),
              const Divider(
                color: Colors.grey,
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              Padding(padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                alignment: Alignment.center,
                height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(4)
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(padding: EdgeInsets.only(top: 4),
                      child: Text(
                        "Snapchat v1.0.0",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),),
                      Padding(padding: EdgeInsets.only(top: 4),
                      child: Text(
                        "Made in Los Angeles",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),)
                    ],
                  ),
              ),),
              const SizedBox(height: 30,),

            ],
          ),
        ),
      ),
    );

  }
}
