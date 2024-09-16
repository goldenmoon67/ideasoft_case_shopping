import 'package:flutter/material.dart';

homeScreennAppbar(BuildContext context) {
  return AppBar(
    title: Image.network(
        'https://ideacdn.net/idea/kh/32/myassets/std_theme_files/tpl-fexx/assets/uploads/logo.png?revision=1653389725',
        height: 30),
    actions: [
      IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
      IconButton(icon: const Icon(Icons.shopping_cart), onPressed: () {}),
    ],
  );
}
