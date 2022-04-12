import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 15.0;

Color kPrimaryColor = const Color(0xFF0E63C2);
Color kSecondaryColor = Color.fromARGB(255, 110, 198, 219);
Color kBlackColor = Color.fromARGB(255, 46, 47, 48);
Color kWhiteColor = const Color(0xFFFFFFFF);
Color kGreyColor = const Color(0xFF9698a9);
Color kGreenColor = const Color(0xFF0EC3AE);
Color kRedColor = const Color(0xFFEB70A5);
Color kBackgroundColor = const Color(0xFFECF3FB);
Color kInActiveColor = const Color(0xFFDBD7EC);
Color kTransparentColor = Colors.transparent;
Color kUnavailableColor = const Color(0xFFEBECF1);
Color kAvailableColor = const Color(0xFFE0D9FF);

TextStyle blackTextStyle = GoogleFonts.montserrat(
  color: kBlackColor,
);
TextStyle whiteTextStyle = GoogleFonts.montserrat(
  color: kWhiteColor,
);
TextStyle greyTextStyle = GoogleFonts.montserrat(
  color: kGreyColor,
);
TextStyle greenTextStyle = GoogleFonts.montserrat(
  color: kGreenColor,
);
TextStyle redTextStyle = GoogleFonts.montserrat(
  color: kRedColor,
);
TextStyle primaryTextStyle = GoogleFonts.montserrat(
  color: kPrimaryColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;
FontWeight extraBold = FontWeight.w800;
FontWeight black = FontWeight.w900;
