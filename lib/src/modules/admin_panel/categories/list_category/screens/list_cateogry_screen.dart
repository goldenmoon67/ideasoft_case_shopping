import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/category_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/bloc/list_category_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/widgets/category_item.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class ListCategoryScreen extends StatefulWidget implements AutoRouteWrapper {
  final ListScreenType listScreenType;
  const ListCategoryScreen({super.key, required this.listScreenType});

  @override
  State<ListCategoryScreen> createState() => _ListCategoryScreenState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => ListCategoryBloc()..add(StartListCategoryEvent()),
      child: this,
    );
  }
}

class _ListCategoryScreenState extends State<ListCategoryScreen> {
  final TextEditingController _searchController = TextEditingController();
  bool _isLoading = false;

  List<CategoryModel> categories = [];

  @override
  void initState() {
    super.initState();
  }

  _onListCategoryChanged(String value) {
    String query = value;

    _performListCategory(query);
  }

  Future<void> _performListCategory(String query) async {
    categories = [];

    setState(() {
      _isLoading = true;
    });
    BlocProvider.of<ListCategoryBloc>(context)
        .add(ListCategorySearchEvent(query));
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ListCategoryBloc, ListCategoryState>(
      listener: (context, state) {
        if (state is ListCategoryLoading) {
          EasyLoading.show();
        } else {
          EasyLoading.dismiss(animation: false);
        }
        if (state is ListCategoryResultData) {
          debugPrint("sadkşlsakdlşsakdaşlslşdsalşakds 454545454545445");
          setState(() {
            _isLoading = false;
            categories.addAll(state.categories);
            debugPrint(categories.toString());
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
          body: state is ListCategoryResultData || state is ListCategorySucces
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        controller: _searchController,
                        onChanged: (value) {
                          _onListCategoryChanged(value);
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.search,
                              color: Colors.deepPurple),
                          labelText: 'Ürün Arama',
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
                            : categories.isEmpty
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
                                    itemCount: categories.length,
                                    itemBuilder: (context, index) {
                                      final category = categories[index];

                                      return ListCategoryResultItem(
                                        listScreenType: widget.listScreenType,
                                        onDismissed: () {
                                          categories.removeWhere(
                                              (item) => item.id == category.id);
                                          BlocProvider.of<ListCategoryBloc>(
                                                  context)
                                              .add(DeleteListCategoryEvent(
                                                  category.id));
                                        },
                                        onTap: () {
                                          AutoRouter.of(context).push(
                                            ProductDetailRoute(
                                                productId: category.id),
                                          );
                                        },
                                        name: category.name,
                                        imageUrl: category.imageUrl,
                                        percent: category.percent,
                                        sortOrder: category.sortOrder,
                                      );
                                    },
                                  ),
                      ),
                    ],
                  ),
                )
              : const Center(
                  child: CircularProgressIndicator(
                    color: Colors.deepPurple,
                  ),
                ),
        );
      },
    );
  }
}
