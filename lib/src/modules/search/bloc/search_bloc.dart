import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final productRepository = getIt<ProductRepository>();
  SearchBloc() : super(SearchLoading()) {
    on<StartSearchEvent>((event, emit) async {
      try {
        emit(SearchLoading());
        var result = await productRepository.getProducts();
        emit(SearchResultData(productListResponse: result));
      } catch (e) {
        emit(ErrorSearchData(error: e.toString()));
      }
    });
    on<ActionSearchEvent>((event, emit) async {
      try {
        emit(SearchLoading());
        var result = await productRepository.searchProducts(event.query);
        emit(SearchResultData(productListResponse: result));
      } catch (e) {
        emit(ErrorSearchData(error: e.toString()));
      }
    });
  }
}
