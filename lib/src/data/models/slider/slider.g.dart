// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'slider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SliderImpl _$$SliderImplFromJson(Map<String, dynamic> json) => _$SliderImpl(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      status: (json['status'] as num).toInt(),
      predefined: (json['predefined'] as num).toInt(),
      items: (json['items'] as List<dynamic>)
          .map((e) => SliderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
    );

Map<String, dynamic> _$$SliderImplToJson(_$SliderImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'status': instance.status,
      'predefined': instance.predefined,
      'items': instance.items,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
    };
