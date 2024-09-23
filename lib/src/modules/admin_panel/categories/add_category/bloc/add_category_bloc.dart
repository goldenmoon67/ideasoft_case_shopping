import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/add_category_request.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/category/category_repository.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/slider/slider_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'add_category_event.dart';
part 'add_category_state.dart';

class AddCategoryBloc extends Bloc<AddCategoryEvent, AddCategoryState> {
  final sliderRepository = getIt<SliderRepository>();
  final categoryRepository = getIt<CategoryRepository>();

  AddCategoryBloc() : super(AddCategoryInitial()) {
    on<StartAddCategoryEvent>((event, emit) async {
      emit(AddCategoryLoading());
    });
    on<AddCategoryActionEvent>(
      (event, emit) async {
        try {
          emit(AddCategoryLoading());
          await categoryRepository.createCategory(
            AddCategoryRequest(
              name: event.name,
              sortOrder: event.sortOrder,
              status: event.status,
              percent: event.percent,
            ),
          );
          emit(AddCategorySuccesData());
        } catch (e) {
          emit(ErrorAddCategoryData(e.toString()));
        }
      },
    );
  }
}
