import 'package:flutter/material.dart';


class Del1 extends StatefulWidget {
  const Del1({Key? key}) : super(key: key);

  @override
  State<Del1> createState() => _Del1State();
}

class _Del1State extends State<Del1> {
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
