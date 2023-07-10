import 'package:flutter/material.dart';
import 'package:snapy/bottomnavbar_option5/Widgets/SettingsWidgets/category_heading_Widget.dart';

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
              categoryHeading(context, "MY ACCOUNT")
            ],
          ),
        ),
      ),
    );

  }
}
