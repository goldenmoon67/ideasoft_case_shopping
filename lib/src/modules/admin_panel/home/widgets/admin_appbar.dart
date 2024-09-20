import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/utils/navigation/app_router.dart';

adminScreennAppbar(BuildContext context) {
  return AppBar(
    title: Image.network(
        'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/logo.png?revision=1653389725',
        height: 30),
    actions: [
      TextButton(
          child: const Text("Storefront  Panele Git"),
          onPressed: () {
            AutoRouter.of(context).setRoot(const HomeRoute());
          }),
    ],
  );
}
