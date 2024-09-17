part of 'product_detail_bloc.dart';

@immutable
sealed class ProductDetailState {}

final class ProductDetailInitial extends ProductDetailState {}

final class ProductDetailLoading extends ProductDetailState {}

final class ProductDetailData extends ProductDetailState {
  final ProductListResponse productDetail;

  ProductDetailData(this.productDetail);
}
