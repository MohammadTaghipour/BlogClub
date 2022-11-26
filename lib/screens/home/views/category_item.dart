import 'package:blogclub/data.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {Key? key,
      required this.category,
      required this.left,
      required this.right})
      : super(key: key);

  final Category category;
  final double left;
  final double right;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: left, right: right),
      child: Stack(
        children: [
          Positioned.fill(
              top: 100,
              left: 56,
              right: 56,
              bottom: 24,
              child: Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Color(0xaa0D253C),
                  ),
                ]),
              )),
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
              decoration: BoxDecoration(
                color: Colors.orange,
                borderRadius: BorderRadius.circular(32),
              ),
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  gradient: const LinearGradient(
                    colors: [Color(0xff0d253c), Colors.transparent],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                  )),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Image.asset(
                    "assets/img/posts/large/${category.imageFileName}",
                    fit: BoxFit.cover,
                  )),
            ),
          ),
          Positioned(
              bottom: 48,
              left: 32,
              child: Text(
                category.title,
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .apply(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
