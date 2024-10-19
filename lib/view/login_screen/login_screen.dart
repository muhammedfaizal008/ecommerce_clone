// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:32,top: 19 ),
            child: Text("Welcome",style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left:32),
            child: Text("Back!",style: GoogleFonts.montserrat(
                fontSize: 36,
                fontWeight: FontWeight.bold
              ),),
          ),
          SizedBox(height: 36,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                focusColor: ColorConstants.GREYCOLOR,
                hintText: "Username or Email",
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
                prefixIcon: Icon(Icons.person,color: Color(0xff626262),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),
          ),
          SizedBox(height: 31,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffF3F3F3),
                focusColor: ColorConstants.GREYCOLOR,
                hintText: "Password",
                hintStyle: GoogleFonts.montserrat(
                  fontSize: 12,
                  fontWeight: FontWeight.w500
                ),
                suffixIcon: Icon(Icons.remove_red_eye_outlined,color: Color(0xff626262),),
                prefixIcon: Icon(Icons.lock,color: Color(0xff626262),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide(width: 1)
                )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25,top: 9),
                child: Text("Forgot Password?",style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                  color: ColorConstants.PRIMARYCOLOR
                ),),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}