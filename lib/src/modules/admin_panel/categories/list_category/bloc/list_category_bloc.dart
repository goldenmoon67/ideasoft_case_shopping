import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'list_category_event.dart';
part 'list_category_state.dart';

class ListCategoryBloc extends Bloc<ListCategoryEvent, ListCategoryState> {
  final productRepository = getIt<ProductRepository>();
  ListCategoryBloc() : super(ListCategoryLoading()) {
    on<StartListCategoryEvent>((event, emit) async {
      emit(ListCategoryInitial());
    });
    on<ActionListCategoryEvent>((event, emit) async {
      emit(ListCategoryLoading());
      var result = await productRepository.searchProducts(event.query);
      emit(ListCategoryResultData(productListResponse: result));
    });
  }
}
