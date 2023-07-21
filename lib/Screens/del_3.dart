import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:snapy/bottomnavbar_option3/camera_screen.dart';

class Del3 extends StatelessWidget {
  const Del3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.black)
    );
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: const CameraScreen3(),
    );
  }
}
