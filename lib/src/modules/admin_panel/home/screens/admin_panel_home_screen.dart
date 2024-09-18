import 'package:auto_route/auto_route.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/home/bloc/admin_panel_home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/widgets/appbar/home_appbar.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

@RoutePage()
class AdminPanelHomeScreen extends StatefulWidget {
  const AdminPanelHomeScreen({super.key});

  @override
  State<AdminPanelHomeScreen> createState() => _AdminPanelHomeScreenState();
}

class _AdminPanelHomeScreenState extends State<AdminPanelHomeScreen> {
  List<SliderItem> sliders = [];
  List<ProductListResponse> products = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          AdminPanelHomeBloc()..add(StartAdminPanelHomeEvent()),
      child: BlocConsumer<AdminPanelHomeBloc, AdminPanelHomeState>(
        listener: (context, state) {
          if (state is AdminPanelHomeLoading) {
            EasyLoading.show();
          } else {
            EasyLoading.dismiss(animation: false);
          }

          if (state is AdminPanelHomeSliderData) {
            sliders.addAll(state.sliderItems);
          }
          if (state is AdminPanelHomeProductData) {
            products.addAll(state.productListResponse);
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: homeScreennAppbar(context),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.shopping_bag, size: 32),
                    label: const Text(
                      'Ürünler',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () => _showOptionsDialog(context, 'Ürünler'),
                  ),
                  const SizedBox(height: 20),
                  const SizedBox(height: 20),
                  ElevatedButton.icon(
                    icon: const Icon(Icons.category, size: 32),
                    label: const Text(
                      'Kategoriler',
                      style: TextStyle(fontSize: 24),
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    onPressed: () => _showOptionsDialog(context, 'Kategoriler'),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void _showOptionsDialog(BuildContext context, String type) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('$type için işleminizi seçiniz'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Icons.list, color: Colors.blue),
              title: const Text('Listele'),
              onTap: () {
                AutoRouter.of(context).push(const ListCategoryRoute());
              },
            ),
            ListTile(
              leading: const Icon(Icons.add, color: Colors.green),
              title: const Text('Ekle'),
              onTap: () {
                AutoRouter.of(context).push(const AddCategoryRoute());
              },
            ),
            ListTile(
              leading: const Icon(Icons.delete, color: Colors.red),
              title: const Text('Sil'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        actions: [
          TextButton(
            child: const Text('İptal'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
