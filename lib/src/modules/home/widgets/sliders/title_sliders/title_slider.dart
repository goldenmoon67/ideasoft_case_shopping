import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/sliders/title_sliders/title_slider_item.dart';

class HomeTitleSlider extends StatelessWidget {
  final List<SliderItem> sliders;
  const HomeTitleSlider({super.key, required this.sliders});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400.0,
        autoPlay: true,
        enlargeCenterPage: true,
      ),
      items: sliders.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return HomeTitleSliderItem(
              imageUrl: "https:${item.imageUrl}", //FIXME:: bug on backend api
              title: item.description,
              buttonText: "Button",
              onPressed: () {
                debugPrint(item.link);
              },
            );
          },
        );
      }).toList(),
    );
  }
}
