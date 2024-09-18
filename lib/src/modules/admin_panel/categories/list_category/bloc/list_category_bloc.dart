import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/category/category_model.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/category/category_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'list_category_event.dart';
part 'list_category_state.dart';

class ListCategoryBloc extends Bloc<ListCategoryEvent, ListCategoryState> {
  final categoryRepository = getIt<CategoryRepository>();
  ListCategoryBloc() : super(ListCategoryLoading()) {
    on<StartListCategoryEvent>((event, emit) async {
      emit(ListCategoryLoading());
      var result = await categoryRepository.getCategories();
      emit(ListCategoryResultData(categories: result));
    });
    on<DeleteListCategoryEvent>((event, emit) async {
      await categoryRepository.deleteCategory(event.id);
      emit(ListCategorySucces());
    });
    on<ListCategorySearchEvent>((event, emit) async {
      var result = await categoryRepository.searchCategories(event.query);
      emit(ListCategoryResultData(categories: result));
    });
  }
}
