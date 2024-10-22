// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_button.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_input_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:32,top: 19 ),
            child: Text("Forgot \npassword?",style: GoogleFonts.montserrat(
              fontSize: 36,
              fontWeight: FontWeight.bold
            ),
            ),
          ),
          SizedBox(height: 36,),
          Padding(
            padding: const EdgeInsets.only(left:32,right: 26),
            child: Custominputfield(fieldname: "Enter your email address",Iconname: Icons.mail,),   
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30,top: 19,bottom: 26),
            child: Text("* We will send you a message to set or reset your new password",style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorConstants.GREYCOLORSHD3
            ),),
          ),
          Custombutton(text_inside: "Submit",)
        ],
      ),
    );
  }
}