import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ideasoft_case_project_shop/src/data/models/image/image_model.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/currency/currency.dart';
import 'package:ideasoft_case_project_shop/src/data/models/product/detail/product_detail.dart';

part 'product_list_response.freezed.dart';
part 'product_list_response.g.dart';

@freezed
class ProductListResponse with _$ProductListResponse {
  const factory ProductListResponse({
    required int id,
    required String name,
    required String fullName,
    required String slug,
    required String sku,
    required String barcode,
    required int stockAmount,
    required int price1,
    required Currency currency,
    required int discount,
    required int discountType,
    required int moneyOrderDiscount,
    required int buyingPrice,
    required String marketPriceDetail,
    required int taxIncluded,
    required int tax,
    required int warranty,
    required int volumetricWeight,
    required String stockTypeLabel,
    required int customShippingDisabled,
    required int customShippingCost,
    required String distributor,
    required int hasGift,
    required String gift,
    required int status,
    required int hasOption,
    required String installmentThreshold,
    required dynamic homeSortOrder,
    required dynamic popularSortOrder,
    required dynamic brandSortOrder,
    required dynamic featuredSortOrder,
    required dynamic campaignedSortOrder,
    required dynamic newSortOrder,
    required dynamic discountedSortOrder,
    required int categoryShowcaseStatus,
    required dynamic midblockSortOrder,
    required String pageTitle,
    required String metaDescription,
    required String metaKeywords,
    required dynamic canonicalUrl,
    required dynamic parent,
    required dynamic brand,
    required ProductDetail detail,
    required List<dynamic> categories,
    required List<dynamic> prices,
    required List<ImageModel> images,
    required List<dynamic> optionGroups,
    required DateTime updatedAt,
    required DateTime createdAt,
  }) = _ProductListResponse;
  factory ProductListResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductListResponseFromJson(json);
}
