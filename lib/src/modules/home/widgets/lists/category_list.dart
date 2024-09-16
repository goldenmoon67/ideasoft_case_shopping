import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/category/category_human_widget.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int _currentIndex = 0;
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  final List<Map<String, String>> _categories = [
    {
      "category": "KADIN",
      "description": "Purple Jersey",
      "image":
          "https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/theme_banner_image_1.png?revision=7.2.8.4-1-1653389725"
    },
    {
      "category": "ERKEK",
      "description": "Black Jersey",
      "image":
          "https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/theme_banner_image_2.png?revision=7.2.8.4-1-1653389725"
    },
    {
      "category": "ÇOCUK",
      "description": "Blue Jersey",
      "image":
          "https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/theme_banner_image_3.png?revision=7.2.8.4-1-1653389725"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
            options: CarouselOptions(
              height: 300,
              viewportFraction: 1.0,
              enlargeCenterPage: false,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            items: _categories.map((category) {
              return Builder(
                builder: (BuildContext context) {
                  return CategoryHumanWidget(
                      title: category['category']!,
                      image: category['image']!,
                      description: category['description']!);
                },
              );
            }).toList(),
            carouselController: _carouselController),
        Positioned(
          left: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              setState(() {
                debugPrint(_currentIndex.toString());
                _currentIndex = (_currentIndex > 0)
                    ? _currentIndex - 1
                    : _categories.length - 1;
                _carouselController.previousPage();
              });
            },
          ),
        ),
        Positioned(
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.arrow_forward_ios),
            onPressed: () {
              setState(() {
                debugPrint(_currentIndex.toString());

                _currentIndex = (_currentIndex < _categories.length - 1)
                    ? _currentIndex + 1
                    : 0;
                _carouselController.nextPage();
              });
            },
          ),
        ),
      ],
    );
  }
}
