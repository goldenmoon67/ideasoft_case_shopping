import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/list_response/product_list_response.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'product_detail_event.dart';
part 'product_detail_state.dart';

class ProductDetailBloc extends Bloc<ProductDetailEvent, ProductDetailState> {
  final productRepository = getIt<ProductRepository>();
  ProductDetailBloc() : super(ProductDetailLoading()) {
    on<StartProductDetailEvent>((event, emit) async {
      try {
        emit(ProductDetailInitial());
        var result = await productRepository.getProductDetail(event.productId);
        emit(ProductDetailData(result));
      } catch (e) {
        emit(ErrorProductDetailData(e.toString()));
      }
    });
  }
}
