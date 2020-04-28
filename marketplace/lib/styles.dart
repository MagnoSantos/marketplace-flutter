import 'package:flutter/material.dart';

const corDeFundo = Brightness.light;
const corPrimaria = const Color(0xFF2AACFF);
const corAcentuada = const Color(0xFFFFFFFF);

ThemeData aplicationTheme() {
  return ThemeData(
    brightness: corDeFundo,
    textTheme: new TextTheme(
      body1: new TextStyle(
        fontFamily: "Poppins",
      ),
      body2: TextStyle(
        fontFamily: "Poppins",
      ),
      button: TextStyle(
        fontFamily: "Poppins",
      ),
      caption: TextStyle(
        fontFamily: "Poppins",
      ),
      display1: TextStyle(
        fontFamily: "Poppins",
      ),
      display2: TextStyle(
        fontFamily: "Poppins",
      ),
      display3: TextStyle(
        fontFamily: "Poppins",
      ),
      display4: TextStyle(
        fontFamily: "Poppins",
      ),
      headline: TextStyle(
        fontFamily: "Poppins",
      ),
      overline: TextStyle(
        fontFamily: "Poppins",
      ),
      subhead: TextStyle(
        fontFamily: "Poppins",
      ),
      subtitle: TextStyle(
        fontFamily: "Poppins",
      ),
      title: TextStyle(
        fontFamily: "",
      ),
    ),
    //Várias cores
    primarySwatch: Colors.blue,
    primaryColor: corPrimaria,
    accentColor: corAcentuada,
  );
}
