import 'package:blogclub/data.dart';
import 'package:blogclub/screens/home/views/post_item.dart';
import 'package:flutter/material.dart';

class PostsList extends StatelessWidget {
  const PostsList({super.key});

  @override
  Widget build(BuildContext context) {
    final posts = AppDatabase.posts;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(32, 0, 24, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Latest News",
                style: Theme.of(context).textTheme.headline5,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "More",
                  style: TextStyle(color: Color(0xff376AED)),
                ),
              )
            ],
          ),
        ),
        ListView.builder(
          shrinkWrap:
              true, // resize list based on items size ==> not good for long lists
          itemExtent: 141, // height of each item
          physics: const ClampingScrollPhysics(), // enables nested scrolls
          itemCount: posts.length,
          itemBuilder: (context, index) {
            final post = posts[index];
            return PostItem(post: post);
          },
        ),
      ],
    );
  }
}
