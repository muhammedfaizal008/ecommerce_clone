import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 317,
        height: 55,
        decoration: BoxDecoration(
          color: ColorConstants.PRIMARYCOLOR,
          borderRadius: BorderRadius.circular(5)
        ),
        child: Center(child: Text("Login",style: GoogleFonts.montserrat(
          fontSize: 20,
          fontWeight: FontWeight.w600,color: Colors.white
        ),)),
      ),
    );
  }
}