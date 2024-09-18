import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

homeScreennAppbar(BuildContext context) {
  return AppBar(
    title: Image.network(
        'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/logo.png?revision=1653389725',
        height: 30),
    actions: [
      IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            AutoRouter.of(context).push(const SearchRoute());
          }),
      IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
      IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
      TextButton(
          child: const Text("Admin Panele Git"),
          onPressed: () {
            AutoRouter.of(context).setRoot(const AdminPanelHomeRoute());
          }),
    ],
  );
}
