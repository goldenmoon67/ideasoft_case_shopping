part of 'add_product_bloc.dart';

@immutable
sealed class AddProductEvent {}

class StartAddProductEvent extends AddProductEvent {
  StartAddProductEvent();
}

class AddProductActionEvent extends AddProductEvent {
  final String name;
  final String sku;
  final double price;
  final int stockAmount;
  final Currency selectedCurrency;

  AddProductActionEvent({
    required this.name,
    required this.sku,
    required this.price,
    required this.stockAmount,
    required this.selectedCurrency,
  });
}
