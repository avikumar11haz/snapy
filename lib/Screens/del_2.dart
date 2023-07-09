import 'package:flutter/material.dart';


class Del2 extends StatefulWidget {
  const Del2({Key? key}) : super(key: key);

  @override
  State<Del2> createState() => _Del2State();
}

class _Del2State extends State<Del2> {
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
