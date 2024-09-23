import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/add/add_product_request.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/currency/currency.dart';
import 'package:ideasoft_case_project_shop/src/domain/repositories/product/product_repository.dart';
import 'package:ideasoft_case_project_shop/src/utils/di/getit_register.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';

class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  final productRepository = getIt<ProductRepository>();

  AddProductBloc() : super(AddProductInitial()) {
    on<StartAddProductEvent>((event, emit) async {
      emit(AddProductLoading());
    });
    on<AddProductActionEvent>(
      (event, emit) async {
        try {
          emit(AddProductLoading());
          var idModel = await productRepository.createProduct(
            AddProductRequest(
              name: event.name,
              sku: event.sku,
              stockAmount: event.stockAmount,
              price1: event.price,
              currency: event.selectedCurrency,
              status: 1,
            ),
          );
          emit(AddProductSuccesData(idModel.id));
        } catch (e) {
          emit(ErrorAddProduct(error: e.toString()));
        }
      },
    );
  }
}
