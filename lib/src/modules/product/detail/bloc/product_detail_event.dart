part of 'product_detail_bloc.dart';

@immutable
sealed class ProductDetailEvent {}

class StartProductDetailEvent extends ProductDetailEvent {
  final int productId;
  StartProductDetailEvent(this.productId);
}
