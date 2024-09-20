import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_create_id_model.freezed.dart';
part 'product_create_id_model.g.dart';

@freezed
class ProductCreateIdModel with _$ProductCreateIdModel {
  const factory ProductCreateIdModel({
    required int id,
  }) = _ProductCreateIdModel;

  factory ProductCreateIdModel.fromJson(Map<String, dynamic> json) =>
      _$ProductCreateIdModelFromJson(json);
}
