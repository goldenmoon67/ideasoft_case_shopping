import 'package:flutter/material.dart';

class ListCategoryResultItem extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final int? sortOrder;
  final int? percent;

  final void Function() onTap;
  final void Function() onDismissed;

  const ListCategoryResultItem({
    super.key,
    required this.onTap,
    required this.onDismissed,
    required this.name,
    required this.imageUrl,
    required this.sortOrder,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(), // Her item için unique bir key sağlanmalı
      direction: DismissDirection.endToStart, // Sağdan sola kaydırma yönü
      onDismissed: (direction) {
        onDismissed();
      },
      background: Container(
        color: Colors.red,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: InkWell(
        onTap: onTap,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
            leading: Image.network(
              imageUrl ?? "",
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
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
