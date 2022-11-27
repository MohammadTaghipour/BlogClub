import 'package:flutter/cupertino.dart';

import '../../../carousel_slider/carousel_slider.dart';
import '../../../data.dart';
import 'category_item.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categories = AppDatabase.categories;
    return CarouselSlider.builder(
      itemCount: categories.length,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        Category category = categories[realIndex];
        return CategoryItem(
          category: category,
          left: realIndex == 0 ? 24 : 8,
          right: realIndex == categories.length - 1 ? 24 : 8,
        );
      },
      options: CarouselOptions(
          scrollPhysics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          viewportFraction: 0.8,
          // every item keeps 80% of screen width
          aspectRatio: 1.2,
          initialPage: 0,
          enableInfiniteScroll: false,
          autoPlay: false,
          autoPlayAnimationDuration: const Duration(seconds: 2),
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          disableCenter: true,
          enlargeCenterPage: true),
    );
  }
}
