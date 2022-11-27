import 'package:blogclub/screens/home/views/category_slider.dart';
import 'package:blogclub/screens/home/views/posts_list.dart';
import 'package:blogclub/screens/home/views/story_list_view.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 16, 32, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Hi, Mohammad!",
                    style: themeData.textTheme.subtitle1,
                  ),
                  Image.asset(
                    "assets/img/icons/notification.png",
                    width: 32,
                    height: 32,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 0, 0, 16),
              child:
                  Text("Explore Today's", style: themeData.textTheme.headline4),
            ),
            const StoryListView(),
            const SizedBox(height: 16),
            const CategorySlider(),
            const PostsList(),
          ],
        ),
      )),
    );
  }
}
