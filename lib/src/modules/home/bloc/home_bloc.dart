import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/slider/slider_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final sliderRepository = getIt<SliderRepository>();
  final productRepository = getIt<ProductRepository>();

  HomeBloc() : super(HomeInitial()) {
    on<StartHomeEvent>((event, emit) async {
      try {
        emit(HomeLoading());
        var slider = await sliderRepository.getSliders();
        emit(HomeSliderData(sliderItems: slider.items));
        var product = await productRepository.getProducts();
        emit(HomeProductData(productListResponse: product));
      } catch (e) {
        emit(ErrorHomeData(error: e.toString()));
      }
    });
  }
}
