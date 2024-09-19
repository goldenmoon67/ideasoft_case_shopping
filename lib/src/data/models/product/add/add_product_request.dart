import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/currency/currency.dart';

part 'add_product_request.freezed.dart';
part 'add_product_request.g.dart';

@freezed
class AddProductRequest with _$AddProductRequest {
  const factory AddProductRequest({
    required String name,
    required String sku,
    required int stockAmount,
    required double price1,
    required Currency currency,
    required int status,
  }) = _AddProductRequest;

  factory AddProductRequest.fromJson(Map<String, dynamic> json) =>
      _$AddProductRequestFromJson(json);
}
