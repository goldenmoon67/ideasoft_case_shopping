// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_image_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateImageModelImpl _$$CreateImageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateImageModelImpl(
      filename: json['filename'] as String,
      extension: json['extension'] as String,
      attachment: json['attachment'] as String,
      sortOrder: (json['sortOrder'] as num).toInt(),
      product: ProductCreateIdModel.fromJson(
          json['product'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CreateImageModelImplToJson(
        _$CreateImageModelImpl instance) =>
    <String, dynamic>{
      'filename': instance.filename,
      'extension': instance.extension,
      'attachment': instance.attachment,
      'sortOrder': instance.sortOrder,
      'product': instance.product,
    };
