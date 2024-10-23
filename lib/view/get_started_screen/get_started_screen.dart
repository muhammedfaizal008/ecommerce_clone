// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/home_screen/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(ImageConstant.GETSTARTED))
            ),
            child: Container(
              padding: EdgeInsets.only(bottom: 34,right: 56,left: 55),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.4),
                  Colors.black.withOpacity(.3),
                  Colors.black.withOpacity(0)
                ])
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  Text("You want Authentic, here you go!",
                  textAlign: TextAlign.center,style: GoogleFonts.montserrat(
                    fontSize: 34,
                    fontWeight: FontWeight.w500,
                    color: ColorConstants.WHITE,
                    ),),
                    SizedBox(height: 14,),
                    Text("You want Authentic, here you go!",
                    textAlign: TextAlign.center,style: GoogleFonts.montserrat(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.WHITESHD1,
                    ),),
                    SizedBox(height: 44,),
                    Custombutton(text_inside: "Get Started",onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                    },)
                ],
              )
            ),          
            ),
    );
  }
}