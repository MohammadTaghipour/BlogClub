import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  final String name;
  final String imageFileName;
  final String iconFileName;
  final bool isViewed;

  const StoryItem(
      {Key? key,
      required this.name,
      required this.imageFileName,
      required this.iconFileName,
      required this.isViewed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      margin: const EdgeInsets.fromLTRB(4, 2, 4, 0),
      child: Column(
        children: [
          Stack(
            children: [
              isViewed ? _storyImageViewed() : _storyImageNotSeen(),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Image.asset("assets/img/icons/$iconFileName",
                      width: 24, height: 24))
            ],
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: themeData.textTheme.bodyText2,
          )
        ],
      ),
    );
  }

  Widget _storyImageNotSeen() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        gradient: const LinearGradient(
          colors: [
            Color(0xff376AED),
            Color(0xff49B0E2),
            Color(0xff9CECFB),
          ],
          begin: Alignment.topLeft,
        ),
      ),
      width: 68,
      height: 68,
      child: Container(
        margin: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.all(5),
        clipBehavior: Clip.antiAlias,
        child: _profileImage(),
      ),
    );
  }

  Widget _storyImageViewed() {
    return SizedBox(
      width: 68,
      height: 68,
      child: DottedBorder(
        radius: const Radius.circular(24),
        borderType: BorderType.RRect,
        strokeWidth: 2,
        color: const Color(0xff7bb28bb2),
        dashPattern: const [8, 3],
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
          ),
          width: 68,
          height: 68,
          child: _profileImage(),
        ),
      ),
    );
  }

  Widget _profileImage() {
    return ClipRRect(
        borderRadius: BorderRadius.circular(17),
        child: Image.asset("assets/img/stories/$imageFileName"));
  }
}
