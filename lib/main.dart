// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone/view/get_started_screen/get_started_screen.dart';
import 'package:ecommerce_clone/view/login_screen/login_screen.dart';
import 'package:ecommerce_clone/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
