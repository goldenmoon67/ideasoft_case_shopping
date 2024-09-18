// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_category_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddCategoryRequestImpl _$$AddCategoryRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddCategoryRequestImpl(
      name: json['name'] as String,
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
      status: (json['status'] as num).toInt(),
      percent: (json['percent'] as num?)?.toInt(),
      imageFile: json['imageFile'] as String?,
    );

Map<String, dynamic> _$$AddCategoryRequestImplToJson(
        _$AddCategoryRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'percent': instance.percent,
      'imageFile': instance.imageFile,
    };
