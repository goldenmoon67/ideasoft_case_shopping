import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/sliders/title_sliders/title_slider_item.dart';

class HomeTitleSlider extends StatelessWidget {
  const HomeTitleSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return HomeTitleSliderItem(
              imageUrl:
                  'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/slider_1.png?revision=7.2.8.4-1-1653389725',
              title: "SLIDER BAŞLIĞI",
              buttonText: "Button",
              onPressed: () {},
            );
          },
        );
      }).toList(),
    );
  }
}
