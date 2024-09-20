// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    AddCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const AddCategoryScreen()),
      );
    },
    AddProductRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const AddProductScreen()),
      );
    },
    AdminPanelHomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const AdminPanelHomeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const HomeScreen(),
      );
    },
    ListCategoryRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const ListCategoryScreen()),
      );
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: ProductDetailScreen(
          key: args.key,
          productId: args.productId,
        )),
      );
    },
    SearchRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(child: const SearchScreen()),
      );
    },
    UploadPhotoRoute.name: (routeData) {
      final args = routeData.argsAs<UploadPhotoRouteArgs>();
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: WrappedRoute(
            child: UploadPhotoScreen(
          key: args.key,
          productId: args.productId,
        )),
      );
    },
  };
}

/// generated route for
/// [AddCategoryScreen]
class AddCategoryRoute extends PageRouteInfo<void> {
  const AddCategoryRoute({List<PageRouteInfo>? children})
      : super(
          AddCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddCategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AddProductScreen]
class AddProductRoute extends PageRouteInfo<void> {
  const AddProductRoute({List<PageRouteInfo>? children})
      : super(
          AddProductRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddProductRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [AdminPanelHomeScreen]
class AdminPanelHomeRoute extends PageRouteInfo<void> {
  const AdminPanelHomeRoute({List<PageRouteInfo>? children})
      : super(
          AdminPanelHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'AdminPanelHomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ListCategoryScreen]
class ListCategoryRoute extends PageRouteInfo<void> {
  const ListCategoryRoute({List<PageRouteInfo>? children})
      : super(
          ListCategoryRoute.name,
          initialChildren: children,
        );

  static const String name = 'ListCategoryRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [ProductDetailScreen]
class ProductDetailRoute extends PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          ProductDetailRoute.name,
          args: ProductDetailRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'ProductDetailRoute';

  static const PageInfo<ProductDetailRouteArgs> page =
      PageInfo<ProductDetailRouteArgs>(name);
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, productId: $productId}';
  }
}

/// generated route for
/// [SearchScreen]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [UploadPhotoScreen]
class UploadPhotoRoute extends PageRouteInfo<UploadPhotoRouteArgs> {
  UploadPhotoRoute({
    Key? key,
    required int productId,
    List<PageRouteInfo>? children,
  }) : super(
          UploadPhotoRoute.name,
          args: UploadPhotoRouteArgs(
            key: key,
            productId: productId,
          ),
          initialChildren: children,
        );

  static const String name = 'UploadPhotoRoute';

  static const PageInfo<UploadPhotoRouteArgs> page =
      PageInfo<UploadPhotoRouteArgs>(name);
}

class UploadPhotoRouteArgs {
  const UploadPhotoRouteArgs({
    this.key,
    required this.productId,
  });

  final Key? key;

  final int productId;

  @override
  String toString() {
    return 'UploadPhotoRouteArgs{key: $key, productId: $productId}';
  }
}
