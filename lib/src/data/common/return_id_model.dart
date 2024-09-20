import 'package:freezed_annotation/freezed_annotation.dart';

part 'return_id_model.freezed.dart';
part 'return_id_model.g.dart';

@freezed
class ReturnIdModel with _$ReturnIdModel {
  const factory ReturnIdModel({
    required int id,
  }) = _ReturnIdModel;

  factory ReturnIdModel.fromJson(Map<String, dynamic> json) =>
      _$ReturnIdModelFromJson(json);
}
