import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'app.dart';

class SplashFlareAnim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        color: Colors.white,
        child: Center(
          child: FractionallySizedBox(
            heightFactor: 0.3,
            child: Builder(
              builder: (context) => FlareActor('images/4c logo.flr',
                      animation: 'anim2', callback: (_) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LearningApp(),
                      ),
                    );
                  }),
            ),
          ),
        ),
      ),
    );
  }
}
