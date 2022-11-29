import 'package:blogclub/gen/assets.gen.dart';
import 'package:blogclub/gen/fonts.gen.dart';
import 'package:blogclub/screens/home/home_screen.dart';
import 'package:blogclub/screens/main/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
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
                  fontFamily: FontFamily.avenir,
                  color: secondaryTextColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w200),
              subtitle2: TextStyle(
                  fontFamily: FontFamily.avenir,
                  color: primaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              headline6: TextStyle(
                  fontFamily: FontFamily.avenir,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: primaryTextColor),
              headline5: TextStyle(
                  fontFamily: FontFamily.avenir,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 20),
              bodyText2: TextStyle(
                  fontFamily: FontFamily.avenir,
                  color: secondaryTextColor,
                  fontSize: 14),
              headline4: TextStyle(
                  fontFamily: FontFamily.avenir,
                  fontSize: 24,
                  color: primaryTextColor,
                  fontWeight: FontWeight.w700),
              caption: TextStyle(
                  fontFamily: FontFamily.avenir,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff7B8BB2),
                  fontSize: 10)),
          textButtonTheme: TextButtonThemeData(
              style: ButtonStyle(
                  textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontWeight: FontWeight.w400,
                      fontFamily: FontFamily.avenir))))),
      home: Stack(
        children: const [
          Positioned.fill(child: HomeScreen()),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: MyBottomNavigationBar(),
          )
        ],
      ),
    );
  }
}
