// ignore_for_file: prefer_const_constructors

import 'package:ecommerce_clone/utils/color_constants.dart';
import 'package:flutter/material.dart';

class Socialmedialogo extends StatelessWidget {
  String assets;
   Socialmedialogo({
    required this.assets

  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
          radius: 12,
          backgroundImage:AssetImage(assets)
          
        ),
      ),
    );
  }
}