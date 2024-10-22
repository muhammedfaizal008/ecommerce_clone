// ignore_for_file: use_key_in_widget_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombutton extends StatelessWidget {
  String text_inside;
  void Function()? onTap;
  Custombutton({
    required this.text_inside,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: InkWell(
        onTap:onTap,
        child: Container(
          width: 317,
          height: 55,
          decoration: BoxDecoration(
            color: ColorConstants.PRIMARYCOLOR,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Center(child: Text(text_inside,style: GoogleFonts.montserrat(
            fontSize: 20,
            fontWeight: FontWeight.w600,color: Colors.white
          ),)),
        ),
      ),
    );
  }
}