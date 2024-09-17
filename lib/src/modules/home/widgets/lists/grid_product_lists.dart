import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/product/product_item.dart';

class GridProductLists extends StatelessWidget {
  final List<ProductListResponse> products;
  const GridProductLists({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: products.length,
        padding: const EdgeInsets.all(10),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, index) {
          return ProductItem(onTap: () {
            // AutoRouter.of().push
          },
              products[index].fullName,
              products[index].price1.toString() + products[index].currency.abbr,
              "https:${products[index].images.first.thumbUrl}.${products[index].images.first.extension}");
        });
  }
}
