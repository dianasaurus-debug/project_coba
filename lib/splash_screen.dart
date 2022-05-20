import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kos_dea/beranda.dart';
import 'package:kos_dea/utils/constants.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSpashScreen();
  }

  startSpashScreen() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomePage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 0, right: 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('H-Cafe',
                      style: TextStyle(
                          fontSize: 30,
                          color : Colors.white,
                          fontWeight: FontWeight.w900)),
                  Text('Your healthy Cafe!',
                      style: TextStyle(
                          fontSize: 20,
                          color : Colors.white,
                          fontWeight: FontWeight.w600)),

                ],
              ),
            )));
  }
}
