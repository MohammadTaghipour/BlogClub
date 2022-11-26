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
            headline6: TextStyle(
                fontFamily: defaultFontFamily,
                fontWeight: FontWeight.bold,
                color: primaryTextColor),
            bodyText2: TextStyle(
                fontFamily: defaultFontFamily,
                color: secondaryTextColor,
                fontSize: 14),
            headline4: TextStyle(
                fontFamily: defaultFontFamily,
                fontSize: 24,
                color: primaryTextColor,
                fontWeight: FontWeight.w700)),
      ),
      home: const HomeScreen(),
    );
  }
}
