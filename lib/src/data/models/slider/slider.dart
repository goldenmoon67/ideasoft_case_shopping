import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ideasoft_case_project_shop/src/data/models/slider/item/slider_item.dart';

part 'slider.freezed.dart';
part 'slider.g.dart';

@freezed
class Slider with _$Slider {
  const factory Slider({
    required int id,
    required String description,
    required int status,
    required int predefined,
    required List<SliderItem> items,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _Slider;

  factory Slider.fromJson(Map<String, dynamic> json) => _$SliderFromJson(json);
}
