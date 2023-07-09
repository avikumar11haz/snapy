import 'package:flutter/material.dart';


class Del4 extends StatefulWidget {
  const Del4({Key? key}) : super(key: key);

  @override
  State<Del4> createState() => _Del4State();
}

class _Del4State extends State<Del4> {
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
