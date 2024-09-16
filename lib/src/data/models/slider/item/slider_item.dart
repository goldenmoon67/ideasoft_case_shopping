import 'package:freezed_annotation/freezed_annotation.dart';

part 'slider_item.freezed.dart';
part 'slider_item.g.dart';

@freezed
class SliderItem with _$SliderItem {
  const factory SliderItem({
    required int index,
    required String link,
    required int sortOrder,
    required int targetBlankStatus,
    required int status,
    required String imageUrl,
    required String description,
  }) = _SliderItem;
  factory SliderItem.fromJson(Map<String, dynamic> json) =>
      _$SliderItemFromJson(json);
}
