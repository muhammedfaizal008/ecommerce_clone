// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/onboarding_screen/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => OnboardingScreen(),));
    }
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              height: 100,
              width: 125,
              image: AssetImage(ImageConstant.MYAPPLOGO)),
            SizedBox(width: 9,),
            Text("Stylish",style: TextStyle(

              letterSpacing: 0,
              fontFamily: "LibreCaslon",
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color:  ColorConstants.PRIMARYCOLOR
            ),)
          ],
        ),
      ),
    );
  }
}