part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSliderData extends HomeState {
  final List<SliderItem> sliderItems;

  HomeSliderData({required this.sliderItems});
}

final class HomeProductData extends HomeState {
  final List<ProductListResponse> productListResponse;

  HomeProductData({required this.productListResponse});
}

final class ErrorHomeData extends HomeState {
  final String error;

  ErrorHomeData({required this.error});
}
