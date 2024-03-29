import 'package:flutter/material.dart';

class Appthemes{
  static ThemeData apptheme=ThemeData(
    primaryColor: Color(0XFF39A552),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Color(0XFF39A552),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30)
        )
      ),
        iconTheme: IconThemeData(
          color: Colors.white,
          size: 35,

        ),
        centerTitle: true
    ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontFamily: "Exo",
          fontWeight: FontWeight.bold,
          fontSize: 24,
          color: Colors.white,
  ),
        bodyLarge: TextStyle(
          fontFamily: "Exo",
          fontWeight: FontWeight.bold,
          fontSize: 22,
          color: Colors.white,
        ),
        bodyMedium: TextStyle(
          fontFamily: "Exo",
          //fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white,
        ),
        bodySmall: TextStyle(
          fontFamily: "Exo",
          fontWeight: FontWeight.bold,
          fontSize: 13,
          color: Colors.white,
        ),
  )

  );

}