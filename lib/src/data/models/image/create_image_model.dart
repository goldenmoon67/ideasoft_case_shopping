import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/product_create_id_model/product_create_id_model.dart';

part 'create_image_model.freezed.dart';
part 'create_image_model.g.dart';

@freezed
class CreateImageModel with _$CreateImageModel {
  const factory CreateImageModel({
    required String filename,
    required String extension,
    required String attachment,
    required int sortOrder,
    required ProductCreateIdModel product,
  }) = _CreateImageModel;

  factory CreateImageModel.fromJson(Map<String, dynamic> json) =>
      _$CreateImageModelFromJson(json);
}
