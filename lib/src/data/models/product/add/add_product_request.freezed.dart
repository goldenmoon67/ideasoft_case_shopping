// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_product_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddProductRequest _$AddProductRequestFromJson(Map<String, dynamic> json) {
  return _AddProductRequest.fromJson(json);
}

/// @nodoc
mixin _$AddProductRequest {
  String get name => throw _privateConstructorUsedError;
  String get sku => throw _privateConstructorUsedError;
  int get stockAmount => throw _privateConstructorUsedError;
  double get price1 => throw _privateConstructorUsedError;
  Currency get currency => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;

  /// Serializes this AddProductRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddProductRequestCopyWith<AddProductRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddProductRequestCopyWith<$Res> {
  factory $AddProductRequestCopyWith(
          AddProductRequest value, $Res Function(AddProductRequest) then) =
      _$AddProductRequestCopyWithImpl<$Res, AddProductRequest>;
  @useResult
  $Res call(
      {String name,
      String sku,
      int stockAmount,
      double price1,
      Currency currency,
      int status});

  $CurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class _$AddProductRequestCopyWithImpl<$Res, $Val extends AddProductRequest>
    implements $AddProductRequestCopyWith<$Res> {
  _$AddProductRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? stockAmount = null,
    Object? price1 = null,
    Object? currency = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      stockAmount: null == stockAmount
          ? _value.stockAmount
          : stockAmount // ignore: cast_nullable_to_non_nullable
              as int,
      price1: null == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CurrencyCopyWith<$Res> get currency {
    return $CurrencyCopyWith<$Res>(_value.currency, (value) {
      return _then(_value.copyWith(currency: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddProductRequestImplCopyWith<$Res>
    implements $AddProductRequestCopyWith<$Res> {
  factory _$$AddProductRequestImplCopyWith(_$AddProductRequestImpl value,
          $Res Function(_$AddProductRequestImpl) then) =
      __$$AddProductRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String sku,
      int stockAmount,
      double price1,
      Currency currency,
      int status});

  @override
  $CurrencyCopyWith<$Res> get currency;
}

/// @nodoc
class __$$AddProductRequestImplCopyWithImpl<$Res>
    extends _$AddProductRequestCopyWithImpl<$Res, _$AddProductRequestImpl>
    implements _$$AddProductRequestImplCopyWith<$Res> {
  __$$AddProductRequestImplCopyWithImpl(_$AddProductRequestImpl _value,
      $Res Function(_$AddProductRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sku = null,
    Object? stockAmount = null,
    Object? price1 = null,
    Object? currency = null,
    Object? status = null,
  }) {
    return _then(_$AddProductRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sku: null == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String,
      stockAmount: null == stockAmount
          ? _value.stockAmount
          : stockAmount // ignore: cast_nullable_to_non_nullable
              as int,
      price1: null == price1
          ? _value.price1
          : price1 // ignore: cast_nullable_to_non_nullable
              as double,
      currency: null == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as Currency,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddProductRequestImpl implements _AddProductRequest {
  const _$AddProductRequestImpl(
      {required this.name,
      required this.sku,
      required this.stockAmount,
      required this.price1,
      required this.currency,
      required this.status});

  factory _$AddProductRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddProductRequestImplFromJson(json);

  @override
  final String name;
  @override
  final String sku;
  @override
  final int stockAmount;
  @override
  final double price1;
  @override
  final Currency currency;
  @override
  final int status;

  @override
  String toString() {
    return 'AddProductRequest(name: $name, sku: $sku, stockAmount: $stockAmount, price1: $price1, currency: $currency, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddProductRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.stockAmount, stockAmount) ||
                other.stockAmount == stockAmount) &&
            (identical(other.price1, price1) || other.price1 == price1) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, sku, stockAmount, price1, currency, status);

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddProductRequestImplCopyWith<_$AddProductRequestImpl> get copyWith =>
      __$$AddProductRequestImplCopyWithImpl<_$AddProductRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddProductRequestImplToJson(
      this,
    );
  }
}

abstract class _AddProductRequest implements AddProductRequest {
  const factory _AddProductRequest(
      {required final String name,
      required final String sku,
      required final int stockAmount,
      required final double price1,
      required final Currency currency,
      required final int status}) = _$AddProductRequestImpl;

  factory _AddProductRequest.fromJson(Map<String, dynamic> json) =
      _$AddProductRequestImpl.fromJson;

  @override
  String get name;
  @override
  String get sku;
  @override
  int get stockAmount;
  @override
  double get price1;
  @override
  Currency get currency;
  @override
  int get status;

  /// Create a copy of AddProductRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddProductRequestImplCopyWith<_$AddProductRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
