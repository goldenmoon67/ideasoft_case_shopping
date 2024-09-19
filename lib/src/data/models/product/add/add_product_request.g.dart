// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddProductRequestImpl _$$AddProductRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$AddProductRequestImpl(
      name: json['name'] as String,
      sku: json['sku'] as String,
      stockAmount: (json['stockAmount'] as num).toInt(),
      price1: (json['price1'] as num).toDouble(),
      currency: Currency.fromJson(json['currency'] as Map<String, dynamic>),
      status: (json['status'] as num).toInt(),
    );

Map<String, dynamic> _$$AddProductRequestImplToJson(
        _$AddProductRequestImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'sku': instance.sku,
      'stockAmount': instance.stockAmount,
      'price1': instance.price1,
      'currency': instance.currency,
      'status': instance.status,
    };
