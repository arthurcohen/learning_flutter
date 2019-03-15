import 'package:flutter/material.dart';
import 'user.dart';
import 'vistoria_card.dart';
import 'bottom_app_bar.dart';

class LearningApp extends StatelessWidget {
  final _currentTab = 0;

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
                  'SurveyMob1',
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.italic,
                    color: Color.fromRGBO(0x33, 0x33, 0x99, 1),
                  ),
                ),
                User(_currentTab),
                VistoriaCard()
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
        bottomNavigationBar: CustomBottomAppBar(),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text(
                  'SurveyMob',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w300),
                ),
                decoration:
                    BoxDecoration(color: Color.fromRGBO(0x33, 0x33, 0x99, 1)),
              ),
              ListTile(
                title: Text('Vistorias'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Sincronizar'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contato'),
                onTap: () {},
              ),
              ListTile(
                title: Text('Contato'),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
