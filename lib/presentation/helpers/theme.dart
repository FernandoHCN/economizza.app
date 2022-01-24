import 'package:baseapp/presentation/helpers/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData themeLight(BuildContext context){
  return ThemeData(
    appBarTheme: AppBarTheme(elevation: 0.0),
    primaryColor: kPrimaryColor,
    backgroundColor: kBackgroungColor,
    scaffoldBackgroundColor: kBackgroungColor,
    buttonColor: kPrimaryDarkColor,
    buttonTheme: ButtonThemeData(
      buttonColor: kPrimaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      minWidth: double.infinity,
      height: 45.0
    ),
    cardColor: kBackgroungColor,
    errorColor: Color(0xFF4548),
    hintColor: kFontLightColor,
    indicatorColor: kPrimaryColor,
    textTheme: GoogleFonts.poppinsTextTheme().copyWith(
      headline1: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 20.0,
        fontWeight: FontWeight.bold
      ),
       headline2: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 18.0,
        fontWeight: FontWeight.bold
      ),
       headline3: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 16.0,
        fontWeight: FontWeight.bold
      ),
       headline4: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 14.0,
        fontWeight: FontWeight.w700
      ),
       headline5: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 12.0,
        fontWeight: FontWeight.w600
      ),
       bodyText1: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 14.0,
        fontWeight: FontWeight.normal
      ),
       bodyText2: GoogleFonts.poppins(
        color: kFontLightColor,
        fontSize: 12.0,
        fontWeight: FontWeight.normal
      ),
       subtitle1: GoogleFonts.poppins(
        color: kFontSecondaryColor,
        fontSize: 14.0,
        fontWeight: FontWeight.normal
      ),
       subtitle2: GoogleFonts.poppins(
        color: kFontSecondaryColor,
        fontSize: 12.0,
        fontWeight: FontWeight.normal
      ),
    )
  );
}