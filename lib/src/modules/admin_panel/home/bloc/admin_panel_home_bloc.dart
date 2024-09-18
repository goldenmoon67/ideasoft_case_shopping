import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/slider/slider_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'admin_panel_home_event.dart';
part 'admin_panel_home_state.dart';

class AdminPanelHomeBloc
    extends Bloc<AdminPanelHomeEvent, AdminPanelHomeState> {
  final sliderRepository = getIt<SliderRepository>();
  final productRepository = getIt<ProductRepository>();

  AdminPanelHomeBloc() : super(AdminPanelHomeInitial()) {
    on<StartAdminPanelHomeEvent>((event, emit) async {
      emit(AdminPanelHomeLoading());
      var slider = await sliderRepository.getSliders();
      emit(AdminPanelHomeSliderData(sliderItems: slider.items));
      var product = await productRepository.getProducts();
      emit(AdminPanelHomeProductData(productListResponse: product));
    });
  }
}
