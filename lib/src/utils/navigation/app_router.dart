import 'package:auto_route/auto_route.dart';
import 'package:ideasoft_case_project_shop/src/modules/home/screens/home_screen.dart';
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

    //other screens
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
