import 'package:flutter/material.dart';
import 'package:ideasoft_case_project_shop/src/modules/admin_panel/categories/list_category/widgets/category_item.dart';

class SearchResultItem extends StatefulWidget {
  final ListScreenType listScreenType;
  final String productImage;
  final String fullName;
  final int price;
  final String currency;
  final String? discount;
  final String stockState;
  final String isTaxIncluded;
  final void Function() onTap;
  final void Function() onDismissed;

  const SearchResultItem({
    super.key,
    required this.productImage,
    required this.fullName,
    required this.price,
    required this.currency,
    required this.discount,
    required this.stockState,
    required this.isTaxIncluded,
    required this.onTap,
    required this.onDismissed,
    required this.listScreenType,
  });
  @override
  State<SearchResultItem> createState() => _SearchResultItemState();
}

class _SearchResultItemState extends State<SearchResultItem>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;
  bool _showBackground = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
    _offsetAnimation = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(-0.2, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    if (widget.listScreenType == ListScreenType.delete) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _triggerDismissAnimation();
      });
    }
  }

  void _triggerDismissAnimation() async {
    setState(() {
      _showBackground = true;
    });

    await _controller.forward();

    await Future.delayed(const Duration(seconds: 1));

    await _controller.reverse();

    setState(() {
      _showBackground = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (_showBackground && widget.listScreenType == ListScreenType.delete)
          Container(
            alignment: Alignment.centerRight,
            height: 98,
            margin: const EdgeInsets.only(top: 10),
            color: Colors.red,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.delete,
                color: Colors.white,
              ),
            ),
          ),
        widget.listScreenType == ListScreenType.delete
            ? SlideTransition(
                position: _offsetAnimation,
                child: Dismissible(
                  key: UniqueKey(),
                  direction: DismissDirection.endToStart,
                  onDismissed: (direction) {
                    widget.onDismissed();
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
                  child: card(),
                ),
              )
            : card(),
      ],
    );
  }

  InkWell card() {
    return InkWell(
      onTap: widget.onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 2,
        margin: const EdgeInsets.symmetric(vertical: 8),
        child: ListTile(
          leading: Image.network(
            widget.productImage,
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
            widget.fullName,
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
                'Fiyat: ${widget.price} ${widget.currency}',
                style: const TextStyle(color: Colors.black54),
              ),
              if (widget.discount != null)
                Text(
                  widget.discount ?? "",
                  style: const TextStyle(color: Colors.red),
                ),
              Text(
                widget.stockState == "In Stock" ? "Mevcut" : "Stok Bulunmuyor",
                style: TextStyle(
                  color: widget.stockState == "In Stock"
                      ? Colors.green
                      : Colors.red,
                ),
              ),
              Text(
                widget.isTaxIncluded,
                style: const TextStyle(color: Colors.blueGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
