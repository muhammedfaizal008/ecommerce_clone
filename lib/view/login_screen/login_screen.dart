// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/get_started_screen/get_started_screen.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_social_media_logo.dart';
import 'package:ecommerce_clone/view/login_screen/sign_up_screen.dart';
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
            child: Custombutton(text_inside: "Login",onTap: () {
              Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context) => GetStartedScreen(),), (route) => false,);
            },
            
            ),
          ),
          SizedBox(height:75,),
          CustomSocialMediaLogo(text1: "Create an Account ",text2: "Sign Up",onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen(),));
          },),
        ],
      ),
    );
  }
}




    


