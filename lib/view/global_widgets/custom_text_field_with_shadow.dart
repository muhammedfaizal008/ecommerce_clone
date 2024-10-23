import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFieldWithShadow extends StatelessWidget {
  const CustomTextFieldWithShadow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 9,
            color: ColorConstants.BLACK.withOpacity(.1)
          )
        ]
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search any Product",
          hintStyle: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.normal,
            color: ColorConstants.GREYCOLORSHD4
          ),
          prefixIcon: Icon(Icons.search,color: ColorConstants.GREYCOLORSHD4,),
          suffixIcon: Icon(Icons.mic_none,color: ColorConstants.GREYCOLORSHD4,),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(borderSide: BorderSide.none)
        ),
      ),
    );
  }
}