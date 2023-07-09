import 'package:flutter/material.dart';
import 'package:snapy/Screens/del_1.dart';
import 'package:snapy/Screens/del_2.dart';
import 'package:snapy/Screens/del_3.dart';
import 'package:snapy/Screens/del_4.dart';
import 'package:snapy/Screens/del_5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedItemIndex = 2;
  late Color _color; //ch--
  final widgetOptions = [
    Del1(),
    Del2(),
    Del3(),
    Del4(),
    Del5()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
        ),
        padding: EdgeInsets.only(top: 10),
        child: Row(
          children: [
            buildNavBarItem(Icons.home, 0),
            buildNavBarItem(Icons.card_giftcard, 1),
            buildNavBarItem(Icons.camera, 2),
            buildNavBarItem(Icons.pie_chart, 3),
            buildNavBarItem(Icons.person, 4),
          ],
        ),
      ),
      body: Center(
        child: widgetOptions.elementAt(_selectedItemIndex),
      ),
    );
  }

  Widget buildNavBarItem(IconData icon, int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedItemIndex= index;
        });
      },
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width/5,
        decoration: index == _selectedItemIndex?
        BoxDecoration(border: Border(bottom: BorderSide(width: 4, color: Colors.green)),
        gradient: LinearGradient(colors: [
          Colors.green.withOpacity(0.3),
          Colors.green.withOpacity(0.015),
        ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
        )
            :BoxDecoration(),
         child: Column(
           children: [
             Icon(icon,
               color: index == _selectedItemIndex
               ? _selectedItemIndex ==1
               ? Colors.blue
               : _selectedItemIndex == 0
               ? Colors.green
               : _selectedItemIndex ==2
               ? Colors.yellow
               : _selectedItemIndex == 3
               ? Colors.purple
               : _selectedItemIndex == 4
               ? Colors.red
               : Colors.grey
               : Colors.grey,
             ),
             index == _selectedItemIndex ?
                 Icon(Icons.arrow_drop_up,
                   color: index == _selectedItemIndex
                       ? _selectedItemIndex ==1
                       ? Colors.blue
                       : _selectedItemIndex == 0
                       ? Colors.green
                       : _selectedItemIndex ==2
                       ? Colors.yellow
                       : _selectedItemIndex == 3
                       ? Colors.purple
                       : _selectedItemIndex == 4
                       ? Colors.red
                       : Colors.grey
                       : Colors.grey,
                 ): Container()
           ],
         ),
      ),
    );
  }
}
