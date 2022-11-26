import 'package:blogclub/data.dart';
import 'package:flutter/material.dart';

import 'StoryItem.dart';

class StoryListView extends StatelessWidget {
  const StoryListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 110,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (context, index) {
          final StoryData story = AppDatabase.stories[index];
          return StoryItem(
            name: story.name,
            imageFileName: story.imageFileName,
            iconFileName: story.iconFileName,
            isViewed: story.isViewed,
          );
        },
        itemCount: AppDatabase.stories.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
