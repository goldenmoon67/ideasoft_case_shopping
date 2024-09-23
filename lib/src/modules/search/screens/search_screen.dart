import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/widgets/category_item.dart';
import 'package:ideasoft_case_project_shop/src/modules/search/bloc/search_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/search/widgets/search_result_item.dart';
import 'package:ideasoft_case_project_shop/src/utils/dialog/app_dialog.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class SearchScreen extends StatefulWidget implements AutoRouteWrapper {
  final ListScreenType listScreenType;
  const SearchScreen({super.key, required this.listScreenType});

  @override
  State<SearchScreen> createState() => _SearchScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc()..add(StartSearchEvent()),
      child: this,
    );
  }
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;

  List<ProductListResponse> products = [];

  @override
  void initState() {
    super.initState();
  }

  _onSearchChanged(String value) {
    String query = value;

    if (query.isNotEmpty) {
      _performSearch(query);
    }
  }

  Future<void> _performSearch(String query) async {
    products = [];

    setState(() {
      _isLoading = true;
    });
    BlocProvider.of<SearchBloc>(context).add(ActionSearchEvent(query));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SearchBloc, SearchState>(
      listener: (context, state) {
        if (state is SearchLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }
        if (state is ErrorSearchData) {
          AppDialog.e(
            context,
            error: state.error,
          );
        }
        if (state is SearchResultData) {
          setState(() {
            _isLoading = false;
            products.addAll(state.productListResponse);
          });
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              "Arama",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.deepPurple,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  controller: _searchController,
                  onChanged: (value) {
                    _onSearchChanged(value);
                  },
                  decoration: InputDecoration(
                    prefixIcon:
                        const Icon(Icons.search, color: Colors.deepPurple),
                    labelText: 'Arama',
                    labelStyle: const TextStyle(color: Colors.deepPurple),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: Colors.deepPurple,
                          ),
                        )
                      : products.isEmpty
                          ? Center(
                              child: Text(
                                'Sonuç Bulunamadı',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey[600],
                                ),
                              ),
                            )
                          : ListView.builder(
                              itemCount: products.length,
                              itemBuilder: (context, index) {
                                final product = products[index];
                                final productImage = product.images != null &&
                                        product.images!.isNotEmpty
                                    ? "https:${product.images![0].originalUrl}.${products[index].images!.first.extension}"
                                    : 'https://via.placeholder.com/150';
                                final price = product.price1;
                                final currency = product.currency!.abbr;
                                final discount = product.discount! > 0
                                    ? '${product.discount}% Discount'
                                    : null;
                                final stockState = product.stockAmount > 0
                                    ? "In Stock"
                                    : "Out of Stock";
                                final isTaxIncluded = product.taxIncluded == 1
                                    ? "Tax Included"
                                    : "Tax Not Included";

                                return SearchResultItem(
                                  listScreenType: widget.listScreenType,
                                  onDismissed: () {},
                                  onTap: () {
                                    AutoRouter.of(context).push(
                                      ProductDetailRoute(
                                          productId: products[index].id),
                                    );
                                  },
                                  productImage: productImage,
                                  fullName: product.fullName,
                                  price: price,
                                  currency: currency,
                                  discount: discount,
                                  stockState: stockState,
                                  isTaxIncluded: isTaxIncluded,
                                );
                              },
                            ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
