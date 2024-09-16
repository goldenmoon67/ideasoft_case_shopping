import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/product/product_item.dart';

class GridProductLists extends StatelessWidget {
  const GridProductLists({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      childAspectRatio: 1.0,
      padding: const EdgeInsets.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: const [
        ProductItem('Ayakkabı 1', '999.99 TL',
            'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/entry_banner_image_1.png?revision=7.2.8.4-1-1653389725'),
        ProductItem('Ayakkabı 2', '799.99 TL',
            'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/entry_banner_image_2.png?revision=7.2.8.4-1-1653389725'),
        ProductItem('Forma 1', '399.99 TL',
            'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/entry_banner_image_3.png?revision=7.2.8.4-1-1653389725'),
      ],
    );
  }
}
