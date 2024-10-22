// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_social_media_logo.dart';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:32,top: 19 ),
            child: Text("Create an \n account",style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            ),
          ),

          SizedBox(height: 33,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "User name or Email",Iconname: Icons.person,),
          ),
          SizedBox(height: 31,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "Password",Iconname: Icons.lock,suffixIcon: Icons.remove_red_eye_outlined,),
          ),
          SizedBox(height: 31,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "Confirm Password",Iconname: Icons.lock,suffixIcon: Icons.remove_red_eye_outlined,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 19),
            child: Text("By clicking the Register button, you agree to the public offer",style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorConstants.GREYCOLORSHD3
            ),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 29,right: 29,top: 38),
            child: Custombutton(text_inside:"Sign Up",),
          ),
          
          SizedBox(height:40,),
          CustomSocialMediaLogo(text1: "I Already have an Account ",text2: "Login",
          onTap: (){
            Navigator.pop(context);
          },
          )

           
        ],
      ),
    );
  }
}