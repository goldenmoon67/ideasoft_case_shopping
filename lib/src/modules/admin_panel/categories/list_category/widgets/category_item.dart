import 'package:flutter/material.dart';

enum ListScreenType { list, delete }

class ListCategoryResultItem extends StatefulWidget {
  final String name;
  final String? imageUrl;
  final int? sortOrder;
  final int? percent;
  final ListScreenType listScreenType;
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
    required this.listScreenType,
  });

  @override
  State<ListCategoryResultItem> createState() => _ListCategoryResultItemState();
}

class _ListCategoryResultItemState extends State<ListCategoryResultItem>
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
            height: 50,
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
        SlideTransition(
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
            child: InkWell(
              onTap: widget.onTap,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: ListTile(
                  leading: Image.network(
                    widget.imageUrl ?? "",
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
                    widget.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
