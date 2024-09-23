part of 'admin_panel_home_bloc.dart';

@immutable
sealed class AdminPanelHomeState {}

final class AdminPanelHomeInitial extends AdminPanelHomeState {}

final class AdminPanelHomeLoading extends AdminPanelHomeState {}

final class AdminPanelHomeSliderData extends AdminPanelHomeState {
  final List<SliderItem> sliderItems;

  AdminPanelHomeSliderData({required this.sliderItems});
}

final class AdminPanelHomeProductData extends AdminPanelHomeState {
  final List<ProductListResponse> productListResponse;

  AdminPanelHomeProductData({required this.productListResponse});
}
final class  AdminPanelErrorState extends AdminPanelHomeState {
  final String error;

  AdminPanelErrorState({required this.error});
}
