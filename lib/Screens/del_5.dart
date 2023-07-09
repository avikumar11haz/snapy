import 'package:flutter/material.dart';


class Del5 extends StatefulWidget {
  const Del5({Key? key}) : super(key: key);

  @override
  State<Del5> createState() => _Del5State();
}

class _Del5State extends State<Del5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0, backgroundColor: Colors.black, titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                showModalBottomSheet(
                  isScrollControlled: true,
                    context: context,
                    builder: (context){
                    return userDetails();
                    });
              },
              child: IconButton(
                onPressed: (){},
                  icon: Container(
                    height: 30,width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.supervised_user_circle,
                    color: Colors.black, size: 30,),
                  )),
            ),
            IconButton(
              icon: Icon(Icons.search, color: Colors.white, size: 30,),
                onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (_) => null)
                );
                }, ),
            Expanded(child: Center(
              child: Text(
                "Discover",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                ),
              ),
            )
            )
        ],
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Row(
            children: [
              GestureDetector(
                onTap: (){
                  showModalBottomSheet(
                    isScrollControlled: true,
                      context: context,
                      builder: (context){
                      return;
                      });
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
