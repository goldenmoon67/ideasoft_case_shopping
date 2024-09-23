import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required int id,
    required String name,
    required String slug,
    required int? sortOrder,
    required int status,
    required String? distributor,
    required String? distributorCode,
    required int? percent,
    required String? imageFile,
    required int? displayShowcaseContent,
    required String? pageTitle,
    required String? metaDescription,
    required String? metaKeywords,
    required String? canonicalUrl,
    required String? parent,
    required List<dynamic>? children,
    required String? imageUrl,
    required int? isCombine,
    required int? isSearchable,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
