// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/social_media_logo.dart';
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
            child: Text("Welcome \n Back!",style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          
          SizedBox(height: 36,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "User name And Email",Iconname: Icons.person,),   
          ),
          SizedBox(height: 31,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "Password",Iconname: Icons.lock,suffixIcon: Icons.remove_red_eye_outlined,),
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
          Padding(
            padding: const EdgeInsets.only(left: 29,right: 29,top: 52),
            child: Custombutton(),
          ),
          SizedBox(height:75,),
          Center(child: Text("-OR Continue with-",style: GoogleFonts.montserrat(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: ColorConstants.GREYCOLORSHD3
          ),)),
          SizedBox(height:20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Socialmedialogo(assets: "assets/images/Frame 4.png",),
              SizedBox(width: 10,),
              Socialmedialogo(assets:"assets/images/Group.png" ,),
              SizedBox(width: 10,),
              Socialmedialogo(assets: "assets/images/facebook-app-symbol 1.png",),
            ],
          ),
          SizedBox(height: 28,),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Create An Account ",style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: ColorConstants.GREYCOLORSHD3
                ),
                ),
                Text("Sign Up ",style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.PRIMARYCOLOR,
                
                ),
                ),
              ],
            )
          ),
        ],
      ),
    );
  }
}





