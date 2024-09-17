import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/bloc/product_detail_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/widgets/add_to_cart_button.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/widgets/product_appbar.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/widgets/product_image_widget.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/widgets/reviews_widget.dart';

@RoutePage()
class ProductDetailScreen extends StatefulWidget implements AutoRouteWrapper {
  final int productId;
  const ProductDetailScreen({super.key, required this.productId});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductDetailBloc()..add(StartProductDetailEvent(productId)),
      child: this,
    );
  }
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  ProductListResponse? productDetail;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailBloc, ProductDetailState>(
      listener: (context, state) {
        if (state is ProductDetailLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }
        if (state is ProductDetailData) {
          productDetail = state.productDetail;
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromRGBO(250, 250, 250, 1),
          appBar: productScreennAppbar(context),
          body: state is ProductDetailData
              ? SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProductImageWidget(
                          imageUrl:
                              "https:${productDetail!.images.first.thumbUrl}.${productDetail!.images.first.extension}",
                        ),
                        const SizedBox(height: 20),
                        Text(
                          productDetail!.fullName,
                          style: const TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 10),
                        const ReviewsWidget(),
                        const SizedBox(height: 20),
                        Text(
                          '${productDetail!.price1.toString()} ${productDetail!.currency.abbr}',
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.orangeAccent,
                          ),
                        ),
                        const SizedBox(height: 20),
                        AddToCartButton(onPressed: () {}),
                        const SizedBox(height: 30),
                        const Text(
                          'Ürün Detayı',
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          productDetail!.detail.details == ""
                              ? "Dummy details"
                              : productDetail!.detail.details ??
                                  "Dummy details",
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black54, height: 1.5),
                        ),
                      ],
                    ),
                  ),
                )
              : const Center(child: CircularProgressIndicator()),
        );
      },
    );
  }
}
