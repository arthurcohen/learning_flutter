import 'package:flutter/material.dart';
import 'user.dart';
import 'vistoria_card.dart';

class LearningApp extends StatefulWidget {
  final Widget child;

  LearningApp({Key key, this.child}) : super(key: key);

  _LearningAppState createState() => _LearningAppState();
}

class _LearningAppState extends State<LearningApp> {
  var _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'SurveyMob',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(0x33, 0x33, 0x99, 1),
                  ),
                ),
                User(_currentTab),
                VistoriaCard(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(0x33, 0xcc, 0x33, 1),
          child: Icon(Icons.add),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4,
          color: Color.fromRGBO(0x33, 0x33, 0x99, 1),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.home),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.person),
                color: Colors.white,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.exit_to_app),
                color: Colors.white,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
