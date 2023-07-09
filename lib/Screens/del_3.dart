import 'package:flutter/material.dart';


class Del3 extends StatefulWidget {
  const Del3({Key? key}) : super(key: key);

  @override
  State<Del3> createState() => _Del3State();
}

class _Del3State extends State<Del3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      color: Colors.red,
      height: MediaQuery.of(context).size.height,
      child: SafeArea(
          child: Text(
            "55555",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
            ),
          )
      ),
    );
  }
}
