import 'package:flutter/material.dart';

productScreennAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 2,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back, color: Colors.black),
      onPressed: () => Navigator.of(context).pop(),
    ),
    actions: [
      IconButton(
        icon: const Icon(Icons.favorite_border, color: Colors.black),
        onPressed: () {},
      ),
    ],
    title: const Text(
      "Ürün Detayı",
      style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
