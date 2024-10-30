// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:ecommerce_clone/dummy_db.dart';
import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/utils/image_constant.dart';
import 'package:ecommerce_clone/view/global_widgets/custom_text_field_with_shadow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_timer_countdown/flutter_timer_countdown.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:custom_rating_bar/custom_rating_bar.dart';

class HomeScreen  extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DummyDb x=DummyDb();
  int currindex=0;

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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16,left: 16),
              child: CustomTextFieldWithShadow(),
            ),
            _buildAllFeaturesSection(),
            SizedBox(height: 16,),
            _carouselHomeScreen(),
            _dealOfTheDaySection()
          ],
        ),
      ),
    );
  }

   _dealOfTheDaySection() {
    return Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              width: 343,
              height: 60, 
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Deal Of the Day",style: GoogleFonts.montserrat(
                          fontSize: 16,fontWeight: FontWeight.w500,
                          color: ColorConstants.WHITE
                        ),),
                        Row(
                          children: [
                            Icon(Icons.alarm,color: ColorConstants.WHITE,size: 16,),
                            SizedBox(width: 4,),
                            TimerCountdown(
                              spacerWidth: 4,
                              timeTextStyle: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: ColorConstants.WHITE
                              ),
                              colonsTextStyle: TextStyle(color: ColorConstants.WHITE),
                              enableDescriptions: false,
                              format: CountDownTimerFormat.hoursMinutesSeconds,
                              endTime: DateTime.now().add(
                              Duration(
                                hours: 14,
                                minutes: 27,
                                seconds: 34,
                              ),
                            ),
                            ),
                            SizedBox(width: 4,),
                            Text("remaining",style: GoogleFonts.montserrat(
                          fontSize: 12,fontWeight: FontWeight.normal,
                          color: ColorConstants.WHITE
                        ),),
                          ],
                        )
                    ],
                  ),
                  Spacer(),
                  Container(
                    height: 28,
                    width: 89,
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: ColorConstants.WHITE),
                      borderRadius: BorderRadius.circular(4)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text("View all",style: GoogleFonts.montserrat(
                          fontSize: 12,fontWeight: FontWeight.w600,
                          color: ColorConstants.WHITE
                        ),),
                        Icon(Icons.arrow_forward,size: 16,color: ColorConstants.WHITE,)
                      ],
                    ),
                  )
                ],
              ),
            ),
            
            SizedBox(
              height: 241,
              width: 345,
              child: Stack(
                children:[ 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(x.dealoftheday.length,(index) => Padding(
                    padding: const EdgeInsets.only(right: 5,top: 9),
                    child: SizedBox(
                    height: 244,
                    width: 165,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 124,
                          width: 170,
                          decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(x.dealoftheday[index]["image"]))
                          ), 
                        ),
                        Text(x.dealoftheday[index]["text1"],style: GoogleFonts.montserrat(
                          fontSize: 12,fontWeight: FontWeight.w500
                        ),),
                        Text(x.dealoftheday[index]["text2"],style: GoogleFonts.montserrat(
                          fontSize: 10,fontWeight: FontWeight.normal
                        ),),
                        Text(x.dealoftheday[index]["text3"],style: GoogleFonts.montserrat(
                          fontSize: 12,fontWeight: FontWeight.w500
                        ),),
                        Row(
                          children: [
                            Text(x.dealoftheday[index]["text4"],style: GoogleFonts.montserrat(
                              fontSize: 12,fontWeight: FontWeight.w100,
                              textStyle: TextStyle(decoration: TextDecoration.lineThrough)
                            ),),
                            SizedBox(width: 5,),
                            Text(x.dealoftheday[index]["text5"],style: GoogleFonts.montserrat(
                              fontSize: 10,fontWeight: FontWeight.normal,
                              color: ColorConstants.ORANGE
                            ),),
                          ],
                        ),
                        Row(
                          children: [
                            RatingBar.readOnly(
                              size: 14,
                              filledIcon: Icons.star, 
                              emptyIcon: Icons.star_border,
                              initialRating: 4,
                              maxRating: 5,
                            ),
                            SizedBox(width: 10,),
                            Text("1090",style: GoogleFonts.montserrat(
                          fontSize: 10,fontWeight: FontWeight.normal,color: Color(0xffA4A9B3)
                        ),)
                          ],
                        )
                      ],
                    ),
                    ),
                  ),
                  ),
                ),
                Positioned(
                      top: 100,
                      right: 15,
                      child: CircleAvatar(
                      radius: 20,
                      backgroundColor: ColorConstants.GREYCOLORSHD4,
                      child: Icon(Icons.arrow_forward_ios,size: 18,),   
                    )),
                ]
              ),
            )
          ],
        );
  }

   _carouselHomeScreen() {
    return Column(
      children: [
        CarouselSlider(
         
          items:List.generate(3, (index) => Container(
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
        )
        ), 
          options:CarouselOptions(
            viewportFraction: 0.9,
            initialPage: currindex,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
               currindex=index; 
              });
            },
        ),
         
        ),
        SmoothPageIndicator(    
              controller:PageController(
                initialPage: currindex
              ),  // PageController    
              count:  3,    
              effect:  WormEffect(
                dotHeight: 9,
                dotWidth: 9,
                spacing: 5,
                dotColor: ColorConstants.GREYCOLORSHD2,
                activeDotColor: ColorConstants.PRIMARYCOLOR
              ), 
            ),
            SizedBox(height: 10,)
      ],
    );
  }

   _buildAllFeaturesSection() {
    
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

