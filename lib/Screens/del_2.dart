import 'package:flutter/material.dart';


class Del2 extends StatefulWidget {
  const Del2({Key? key}) : super(key: key);

  @override
  State<Del2> createState() => _Del2State();
}

class _Del2State extends State<Del2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context){
                    return userDetails();
                    });
              },
              child: IconButton(onPressed: (){},
                icon: Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.supervised_user_circle_outlined,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
            ),
            IconButton(onPressed: (){},
                icon: Icon(
                  Icons.search,
                ))
          ],
        ),
      ),
    );
  }
}
