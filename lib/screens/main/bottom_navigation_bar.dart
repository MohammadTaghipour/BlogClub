import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xff9B8487).withOpacity(0.3),
                    blurRadius: 20,
                  )
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    MyBottomNavigationItem(
                      iconFileName: "Home.png",
                      title: "Home",
                      activeIconFileName: "Home.png",
                    ),
                    MyBottomNavigationItem(
                      iconFileName: "Articles.png",
                      title: "Article",
                      activeIconFileName: "Home.png",
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    MyBottomNavigationItem(
                      iconFileName: "Search.png",
                      title: "Search",
                      activeIconFileName: "Home.png",
                    ),
                    MyBottomNavigationItem(
                      iconFileName: "Menu.png",
                      title: "Menu",
                      activeIconFileName: "Home.png",
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Container(
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.5),
                  color: const Color(0xff376AED),
                  border: Border.all(color: Colors.white, width: 4)),
              child: Image.asset("assets/img/icons/plus.png"),
            ),
          )
        ],
      ),
    );
  }
}

class MyBottomNavigationItem extends StatelessWidget {
  final String iconFileName;
  final String activeIconFileName;
  final String title;
  const MyBottomNavigationItem(
      {super.key,
      required this.iconFileName,
      required this.activeIconFileName,
      required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/img/icons/$iconFileName"),
        const SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.caption,
        )
      ],
    );
  }
}
