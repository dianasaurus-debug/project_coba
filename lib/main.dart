import 'package:flutter/material.dart';
import 'package:kos_dea/beranda.dart';
import 'package:kos_dea/main_screen.dart';
import 'package:kos_dea/splash_screen.dart';

import 'home.dart';

void main(){
  runApp(MaterialApp(
    theme : ThemeData(fontFamily: 'Quicksand', scaffoldBackgroundColor: Colors.white),
    debugShowCheckedModeBanner: false,
    title: 'Healthy Cafe',
    home: SplashScreenPage(),
  ));
}