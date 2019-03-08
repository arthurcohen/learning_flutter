import 'package:flutter/material.dart';

class User extends StatelessWidget {
  final int id;

  User(this.id);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                boxShadow: [BoxShadow(color: Colors.black, blurRadius: 2)],
                shape: BoxShape.circle),
            child: CircleAvatar(
              backgroundImage: AssetImage('images/profile.jpeg'),
              backgroundColor: Color.fromRGBO(0x33, 0x33, 0x99, 1),
              radius: 40,
            ),
          ),
          Text(
            'Arthur Cohen (arthur)',
            style: TextStyle(
              // color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Natal, RN',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              // color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
