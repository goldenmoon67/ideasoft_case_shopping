import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/slider/slider_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final sliderRepository = getIt<SliderRepository>();
  HomeBloc() : super(HomeInitial()) {
    on<StartHomeEvent>((event, emit) async {
      emit(HomeLoading());
      var result = await sliderRepository.getSliders();
      emit(HomeSliderData(sliderItems: result.items));
    });
  }
}
