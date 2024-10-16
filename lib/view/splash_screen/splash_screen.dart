// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/splash_screen/Group 34010.png")),
            Text("Stylish",style: TextStyle(
              color: Color.fromRGBO(248, 55, 88, 100)
            ),)
          ],
        ),
      ),
    );
  }
}