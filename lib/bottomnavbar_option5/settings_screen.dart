
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
          onPressed: ()=> Navigator.of(context).pop(),
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
              Divider(
                color: Colors.grey[300],
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      const Text(
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
                            color: Colors.grey[350],
                          ),
                        ),
                        Icon(
                          Icons.share,
                          color: Colors.grey[350],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Birthday", "30/11/2003"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Mobile Number", "123*****89"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
                ),
              twoItems("Email", "demo@**8.com"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Password"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Two-Factor Authentication"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Connected Apps"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Notification"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Bitmoji"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Ram"),
              Divider(
                color: Colors.grey[300],
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
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Use My Cameos Selfie", "Only Me"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Send me Notifications"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              twoItems("Visit My Story", "Everyone"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("See Me in Quick Add"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("See My Location"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Memories"),
              Divider(
                color: Colors.grey[300],
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
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Ads"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Data Saver"),
              categoryHeading(context, "PRIVACY"),
              singleItem("Clear Conversation"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear Search History"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear Top Location"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Contact Syncing"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Our Story Snaps"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Permissions"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("My Data"),
              categoryHeading(context, "SUPPORT"),
              singleItem("I Need Help"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I have a privacy Question"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              categoryHeading(context, "FEEDBACK"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I Spotted a BUG"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("I have a Suggestion"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Shake To Report"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              categoryHeading(context, "MORE INFORMATION"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Privacy Policy"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Safety Centre"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Terms of Service"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),singleItem("Other Legal"),
              categoryHeading(context, "ACCOUNT ACTIONS"),
              singleItem("Clear Cache"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),singleItem("Clear Lens Data"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Clear My Cameos Selfie"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Blocked"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              singleItem("Log Out"),
              Divider(
                color: Colors.grey[300],
                height: 0.5,
                indent: 15,
                endIndent: 15,
              ),
              Padding(padding: const EdgeInsets.only(left: 15, right: 15),
                child: Container(
                alignment: Alignment.center,
                height: 45,
                  decoration: BoxDecoration(
                    color: Colors.grey[300]!.withOpacity(0.6),
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
