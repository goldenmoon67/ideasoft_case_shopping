// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      slug: json['slug'] as String,
      sortOrder: (json['sortOrder'] as num?)?.toInt(),
      status: (json['status'] as num).toInt(),
      distributor: json['distributor'] as String?,
      distributorCode: json['distributorCode'] as String?,
      percent: (json['percent'] as num?)?.toInt(),
      imageFile: json['imageFile'] as String?,
      displayShowcaseContent: (json['displayShowcaseContent'] as num?)?.toInt(),
      showcaseContent: json['showcaseContent'] as bool?,
      showcaseContentDisplayType:
          (json['showcaseContentDisplayType'] as num?)?.toInt(),
      displayShowcaseFooterContent:
          (json['displayShowcaseFooterContent'] as num?)?.toInt(),
      showcaseFooterContent: json['showcaseFooterContent'] as bool?,
      showcaseFooterContentDisplayType:
          (json['showcaseFooterContentDisplayType'] as num?)?.toInt(),
      hasChildren: (json['hasChildren'] as num?)?.toInt(),
      pageTitle: json['pageTitle'] as String?,
      metaDescription: json['metaDescription'] as String?,
      metaKeywords: json['metaKeywords'] as String?,
      canonicalUrl: json['canonicalUrl'] as String?,
      parent: json['parent'] as String?,
      children: json['children'] as String?,
      imageUrl: json['imageUrl'] as String?,
      isCombine: (json['isCombine'] as num?)?.toInt(),
      isSearchable: (json['isSearchable'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'sortOrder': instance.sortOrder,
      'status': instance.status,
      'distributor': instance.distributor,
      'distributorCode': instance.distributorCode,
      'percent': instance.percent,
      'imageFile': instance.imageFile,
      'displayShowcaseContent': instance.displayShowcaseContent,
      'showcaseContent': instance.showcaseContent,
      'showcaseContentDisplayType': instance.showcaseContentDisplayType,
      'displayShowcaseFooterContent': instance.displayShowcaseFooterContent,
      'showcaseFooterContent': instance.showcaseFooterContent,
      'showcaseFooterContentDisplayType':
          instance.showcaseFooterContentDisplayType,
      'hasChildren': instance.hasChildren,
      'pageTitle': instance.pageTitle,
      'metaDescription': instance.metaDescription,
      'metaKeywords': instance.metaKeywords,
      'canonicalUrl': instance.canonicalUrl,
      'parent': instance.parent,
      'children': instance.children,
      'imageUrl': instance.imageUrl,
      'isCombine': instance.isCombine,
      'isSearchable': instance.isSearchable,
    };
