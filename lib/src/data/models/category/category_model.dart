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
    required bool? showcaseContent,
    required int? showcaseContentDisplayType,
    required int? displayShowcaseFooterContent,
    required bool? showcaseFooterContent,
    required int? showcaseFooterContentDisplayType,
    required int? hasChildren,
    required String? pageTitle,
    required String? metaDescription,
    required String? metaKeywords,
    required String? canonicalUrl,
    required String? parent,
    required String? children,
    required String? imageUrl,
    required int? isCombine,
    required int? isSearchable,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}
