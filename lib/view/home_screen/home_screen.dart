// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_text_field_with_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.WHITE,
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu,size: 24,),onPressed: (){},),
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              height: 31,
              width: 38,
              ImageConstant.MYAPPLOGO),
              SizedBox(width: 9,),
              Text("Stylish",style: TextStyle(
              letterSpacing: 0,
              fontFamily: "LibreCaslon",
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color:  ColorConstants.HOMESCREENLOGO
            ),)
          ],
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            child: Image.asset(ImageConstant.PROFILEPIC),
          ),
          SizedBox(width: 12,),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16,left: 16),
            child: CustomTextFieldWithShadow(),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: _buildAllFeaturesSection(),
          )
        ],
      ),
    );
  }

  Column _buildAllFeaturesSection() {
    return Column(
      children: [
                Row(
                children: [
                  Text("All Featured",style: GoogleFonts.montserrat(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.BLACK
                   ),),
                   Spacer(),
                   Container(
                     child: Row(
                      children: [
                        Text("Sort",style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: ColorConstants.BLACK
                      ),),Icon(Icons.swap_vert,size: 15,)
                      ],
                     ),
                   ),
                   SizedBox(width: 12,),
                   Container(
                     child: Row(
                      children: [
                        Text("Filter",style: GoogleFonts.montserrat(
                        fontSize: 12,
                        fontWeight: FontWeight.normal,
                        color: ColorConstants.BLACK
                      ),),Icon(Icons.filter_alt_outlined,size: 15)
                      ],
                     ),
                   ),
                ],
              ),
              SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(5, (index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        children: [
                          CircleAvatar(),
                          Text("Beauty")
                        ],
                      ),
                  ),)
                ),
              ),
              
      ],
    );
  }
}

