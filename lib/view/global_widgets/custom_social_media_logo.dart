import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:ecommerce_clone/view/login_screen/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class CustomSocialMediaLogo extends StatelessWidget {
  String text1;
  String text2;
  void Function()? onTap;
   CustomSocialMediaLogo({
    super.key,
    required this.text1,
    required this.text2,
    this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(child: Text("-OR Continue with-",style: GoogleFonts.montserrat(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: ColorConstants.GREYCOLORSHD3
        ),)
        ),
        SizedBox(height:20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorConstants.PRIMARYCOLOR, 
                  width: 1, 
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundColor: ColorConstants.CIRCLEFILL,
                  radius: 15,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/Frame 4.png"),
                  
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorConstants.PRIMARYCOLOR, 
                  width: 1, 
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundColor: ColorConstants.CIRCLEFILL,
                  radius: 15,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/Group.png"),
                  
                ),
              ),
            ),
            SizedBox(width: 10,),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: ColorConstants.PRIMARYCOLOR, 
                  width: 1, 
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: CircleAvatar(
                  backgroundColor: ColorConstants.CIRCLEFILL,
                  radius: 15,
                  child: Image.asset(
                    fit: BoxFit.cover,
                    "assets/images/facebook-app-symbol 1.png"),
                  
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 28,),
        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(text1,style: GoogleFonts.montserrat(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: ColorConstants.GREYCOLORSHD3
              ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Text(text2,style: GoogleFonts.montserrat(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: ColorConstants.PRIMARYCOLOR,
                
                ),
                ),
              ),
            ],
          )
        ),
      ],
    );
  }
}