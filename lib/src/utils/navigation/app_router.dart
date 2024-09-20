import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/add_category/screens/add_category_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/widgets/category_item.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/products/add_product/screens/add_product_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/home/screens/admin_panel_home_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/products/upload_photo/screens/upload_photo_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/screens/home_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/screens/product_detail_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/screens/list_cateogry_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/search/screens/search_screen.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/guards/auth_guard.dart';
part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  AppRouter({super.navigatorKey, required this.authGuard});

  final AuthGuard authGuard;
  @override
  final List<AutoRoute> routes = [
    AutoRoute(
      page: HomeRoute.page,
      initial: true,
    ),
    AutoRoute(
      page: SearchRoute.page,
    ),
    AutoRoute(
      page: ProductDetailRoute.page,
    ),
    AutoRoute(
      page: AdminPanelHomeRoute.page,
    ),
    AutoRoute(
      page: AddCategoryRoute.page,
    ),
    AutoRoute(
      page: ListCategoryRoute.page,
    ),
    AutoRoute(
      page: AddProductRoute.page,
    ),
    AutoRoute(
      page: UploadPhotoRoute.page,
    ),
  ];
}

extension StackRouterExtension on StackRouter {
  Future setRoot(PageRouteInfo route) {
    return pushAndPopUntil(route, predicate: (route) => false);
  }
}

extension AppRouterExtension on AppRouter {
  Future setRoot(PageRouteInfo route) {
    return pushAndPopUntil(route, predicate: (route) => false);
  }
}
