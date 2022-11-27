import 'package:blogclub/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const defaultFontFamily = "Avenir";

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryTextColor = Color(0xff00253C);
    const secondaryTextColor = Color(0xff204379);
    const primaryColor = Color(0xff376AED);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
              subtitle1: TextStyle(
                  fontFamily: defaultFontFamily,
                  color: secondaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
              subtitle2: TextStyle(
                  fontFamily: defaultFontFamily,
                  color: primaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              headline6: TextStyle(
                  fontFamily: defaultFontFamily,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: primaryTextColor),
              headline5: TextStyle(
                  fontFamily: defaultFontFamily,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
              bodyText2: TextStyle(
                  fontFamily: defaultFontFamily,
                  color: secondaryTextColor,
                  fontSize: 14),
              headline4: TextStyle(
                  fontFamily: defaultFontFamily,
                  fontSize: 24,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w700)),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: defaultFontFamily))))),
      home: const HomeScreen(),
    );
  }
}
