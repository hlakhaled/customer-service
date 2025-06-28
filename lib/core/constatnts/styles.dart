import 'package:customer_service/core/constatnts/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Styles {
  //  titles (Customer Service, Help & FAQs, Contact Us, Chat)
  static final textStyle18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.salmon,
  );

  //  welcome message on Customer Service screen
  static final textStyle24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.black,
  );

  // Style for description text on Customer Service screen and general body text
  static final textStyle16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: AppColors.black,
  );

  // Style for tab labels in Help & FAQs screen and contact method titles
  static final textStyle16Bold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.black,
  );

  // Style for FAQ answers, contact details, and search bar hint text
  static final textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: AppColors.black,
  );

  // Style for chat message text
  static final textStyle16Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: AppColors.black,
  );

  // Style for chat sender and timestamp text
  static final textStyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: GoogleFonts.roboto().fontFamily,
    color: AppColors.black,
  );

  // Style for button text (e.g., CustomButton)
  static final textStyle16Button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    fontFamily: GoogleFonts.poppins().fontFamily,
    color: AppColors.white,
  );
}


const TextStyle textStyle = TextStyle();
