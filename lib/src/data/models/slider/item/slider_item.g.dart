// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderItemImpl _$$SliderItemImplFromJson(Map<String, dynamic> json) =>
    _$SliderItemImpl(
      index: (json['index'] as num).toInt(),
      link: json['link'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      targetBlankStatus: (json['targetBlankStatus'] as num).toInt(),
      status: (json['status'] as num).toInt(),
      imageUrl: json['imageUrl'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$SliderItemImplToJson(_$SliderItemImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'link': instance.link,
      'sortOrder': instance.sortOrder,
      'targetBlankStatus': instance.targetBlankStatus,
      'status': instance.status,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
    };
