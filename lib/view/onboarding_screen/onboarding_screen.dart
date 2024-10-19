// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/login_screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 17),
          child: Row(
            children: [
              Text("1",style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
              )),
              Text("/3",style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xffA0A0A1)
              )),
            ],
          ),
        ),
        actions: [
          InkWell(
            onTap: (){},
            child: Text("Skip",style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black
                  )),
          ),
          SizedBox(width: 17,)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            height: 300,
            width: 300,
            ImageConstant.ONBOARDING1),
          SizedBox(height: 15,),
          Text("Choose Product",style: GoogleFonts.montserrat(
            fontSize: 24,
            fontWeight: FontWeight.w800
          ),),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 17,right: 18),
            child: Text("Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.",
            textAlign: TextAlign.center,
            style: GoogleFonts.monomaniacOne(fontSize: 14,
            color: Color(0xffA8A8A9),
            fontWeight: FontWeight.normal
            ),
            ),
          ),
          
          
        ],
      ),
      bottomNavigationBar: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 19,bottom: 22),
                child: InkWell(
                  onTap: (){

                  },
                  child: Text("Prev",style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.GREYCOLORSHD2
                  ),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 19,bottom: 22),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                  },
                  child: Text("Next",style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.PRIMARYCOLOR
                  ),),
                ),
              ),
              
            ],
          )
    );
  }
}