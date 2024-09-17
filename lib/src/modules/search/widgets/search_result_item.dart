import 'package:flutter/material.dart';

class SearchResultItem extends StatelessWidget {
  final String productImage;
  final String fullName;
  final int price;
  final String currency;
  final String? discount;
  final String stockState;
  final String isTaxIncluded;
  const SearchResultItem(
      {super.key,
      required this.productImage,
      required this.fullName,
      required this.price,
      required this.currency,
      required this.discount,
      required this.stockState,
      required this.isTaxIncluded});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: Image.network(
          productImage,
          width: 50,
          height: 50,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) {
            return const Icon(
              Icons.image_not_supported,
              color: Colors.grey,
              size: 50,
            );
          },
        ),
        title: Text(
          fullName,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fiyat: $price $currency',
              style: const TextStyle(color: Colors.black54),
            ),
            if (discount != null)
              Text(
                discount ?? "",
                style: const TextStyle(color: Colors.red),
              ),
            Text(
              stockState == "In Stock" ? "Mevcut" : "Stok Bulunmuyor",
              style: TextStyle(
                color: stockState == "In Stock" ? Colors.green : Colors.red,
              ),
            ),
            Text(
              isTaxIncluded,
              style: const TextStyle(color: Colors.blueGrey),
            ),
          ],
        ),
      ),
    );
  }
}
