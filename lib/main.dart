import 'package:flutter/material.dart';
import 'package:healthycafe/beranda.dart';
import 'package:healthycafe/main_screen.dart';
import 'package:healthycafe/splash_screen.dart';

import 'home.dart';

void main(){
  runApp(MaterialApp(
    theme : ThemeData(fontFamily: 'Quicksand', scaffoldBackgroundColor: Colors.white),
    debugShowCheckedModeBanner: false,
    title: 'Healthy Cafe',
    home: SplashScreenPage(),
  ));
}