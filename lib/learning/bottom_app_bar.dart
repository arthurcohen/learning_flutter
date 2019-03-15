import 'package:flutter/material.dart';
import 'dart:io';

class CustomBottomAppBar extends StatelessWidget {
  final Widget child;

  CustomBottomAppBar({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(

        shape: CircularNotchedRectangle(),
        notchMargin: 4,
        color: Color.fromRGBO(0x33, 0x33, 0x99, 1),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () {
                print('menu teste');
                Scaffold.of(context).openDrawer();
              },
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
              onPressed: () {
                exit(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
