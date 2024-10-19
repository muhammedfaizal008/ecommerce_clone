// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Custominputfield extends StatelessWidget {
  String fieldname;
  IconData? Iconname;
  IconData? suffixIcon;
   Custominputfield({required this.fieldname,this.Iconname,this.suffixIcon});

  @override
  Widget build(BuildContext context) {
    

    return TextFormField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xffF3F3F3),
        hintText: fieldname,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w500
        ),
        enabled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(width: 1,
          color: ColorConstants.GREYCOLOR
          )
        ),
        prefixIcon: Icon(Iconname,color: Color(0xff626262),),
        suffixIcon: Icon(suffixIcon,color: Color(0xff626262)),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: ColorConstants.GREYCOLOR
          )
        )
      ),
    );
  }
}