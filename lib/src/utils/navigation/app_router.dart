import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/screens/home_screen.dart';
import 'package:ideasoft_case_project_shop/src/modules/product/detail/screens/product_detail_screen.dart';
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
