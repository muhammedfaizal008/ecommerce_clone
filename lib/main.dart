// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor:ColorConstants.SCAFFOLDCOLOR),
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
