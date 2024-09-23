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
      try {
        var result = await categoryRepository.getCategories();
        emit(ListCategoryResultData(categories: result));
      } catch (e) {
        emit(ErrorListCategory(error: e.toString()));
      }
    });
    on<DeleteListCategoryEvent>((event, emit) async {
      try {
        await categoryRepository.deleteCategory(event.id);
        emit(ListCategorySucces());
      } catch (e) {
        emit(ErrorListCategory(error: e.toString()));
      }
    });
    on<ListCategorySearchEvent>((event, emit) async {
      try {
        var result = await categoryRepository.searchCategories(event.query);
        emit(ListCategoryResultData(categories: result));
      } catch (e) {
        emit(ErrorListCategory(error: e.toString()));
      }
    });
  }
}
