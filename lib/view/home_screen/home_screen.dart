// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ecommerce_clone/dummy_db.dart';
import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_text_field_with_shadow.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen  extends StatelessWidget {
   HomeScreen({super.key});
  DummyDb x=DummyDb();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          _buildAllFeaturesSection(),
          SizedBox(height: 16,),
          _carouselHomeScreen()
        ],
      ),
    );
  }

  Padding _carouselHomeScreen() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            width: 343,
            height: 189,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(ImageConstant.CAROUSELBG1))
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("50-40% OFF",style: GoogleFonts.montserrat(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: ColorConstants.WHITE
                  ),),
                  SizedBox(height: 8,),
                  Text("Now in (product) \n All colours",style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: ColorConstants.WHITE
                  ),),
                  SizedBox(height: 12,),
                  Container(
                    width: 100,
                    height: 32,
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorConstants.WHITE,
                      width: 1,
                      ),
                      borderRadius: BorderRadius.circular(6)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Shop Now",style: GoogleFonts.montserrat(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: ColorConstants.WHITE
                    ),),
                    SizedBox(width: 4,),
                    Icon(Icons.arrow_forward,color: ColorConstants.WHITE,size: 16,)
                    
                    ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Column _buildAllFeaturesSection() {
    
    return Column(
      children: [
                Padding(
                  padding: const EdgeInsets.only(top:16,right: 21,left: 22 ),
                  child: Row(
                  children: [
                    Text("All Featured",style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: ColorConstants.BLACK
                     ),),
                     Spacer(),
                     Container(
                      decoration: BoxDecoration(
                        
                      ),
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
                ),
              SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: List.generate(x.Features.length, (index) => Padding(
                      padding: const EdgeInsets.only(right:16),
                      child: Column(
                          children: [
                            CircleAvatar(
                              radius: 26.5,
                              backgroundImage: NetworkImage(x.Features[index]["imageurl"]),
                            ),
                            SizedBox(height: 4,),
                            Text(x.Features[index]["name"],
                            style: GoogleFonts.montserrat(
                              fontSize: 10,
                              fontWeight: FontWeight.normal,
                              color: ColorConstants.FEATURESLISTCOLOR
                            ),
                            )
                          ],
                        ),
                    ),)
                  ),
                ),
              ),
              
      ],
    );
  }
}

