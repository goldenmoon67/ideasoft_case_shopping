import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_category_request.freezed.dart';
part 'add_category_request.g.dart';

@freezed
class AddCategoryRequest with _$AddCategoryRequest {
  const factory AddCategoryRequest({
    required String name,
    required int? sortOrder,
    required int status,
    required int? percent,
  }) = _AddCategoryRequest;

  factory AddCategoryRequest.fromJson(Map<String, dynamic> json) =>
      _$AddCategoryRequestFromJson(json);
}
