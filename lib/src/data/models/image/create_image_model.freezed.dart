// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateImageModel _$CreateImageModelFromJson(Map<String, dynamic> json) {
  return _CreateImageModel.fromJson(json);
}

/// @nodoc
mixin _$CreateImageModel {
  String get filename => throw _privateConstructorUsedError;
  String get extension => throw _privateConstructorUsedError;
  String get attachment => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  ProductCreateIdModel get product => throw _privateConstructorUsedError;

  /// Serializes this CreateImageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateImageModelCopyWith<CreateImageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateImageModelCopyWith<$Res> {
  factory $CreateImageModelCopyWith(
          CreateImageModel value, $Res Function(CreateImageModel) then) =
      _$CreateImageModelCopyWithImpl<$Res, CreateImageModel>;
  @useResult
  $Res call(
      {String filename,
      String extension,
      String attachment,
      int sortOrder,
      ProductCreateIdModel product});

  $ProductCreateIdModelCopyWith<$Res> get product;
}

/// @nodoc
class _$CreateImageModelCopyWithImpl<$Res, $Val extends CreateImageModel>
    implements $CreateImageModelCopyWith<$Res> {
  _$CreateImageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? extension = null,
    Object? attachment = null,
    Object? sortOrder = null,
    Object? product = null,
  }) {
    return _then(_value.copyWith(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductCreateIdModel,
    ) as $Val);
  }

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCreateIdModelCopyWith<$Res> get product {
    return $ProductCreateIdModelCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateImageModelImplCopyWith<$Res>
    implements $CreateImageModelCopyWith<$Res> {
  factory _$$CreateImageModelImplCopyWith(_$CreateImageModelImpl value,
          $Res Function(_$CreateImageModelImpl) then) =
      __$$CreateImageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String filename,
      String extension,
      String attachment,
      int sortOrder,
      ProductCreateIdModel product});

  @override
  $ProductCreateIdModelCopyWith<$Res> get product;
}

/// @nodoc
class __$$CreateImageModelImplCopyWithImpl<$Res>
    extends _$CreateImageModelCopyWithImpl<$Res, _$CreateImageModelImpl>
    implements _$$CreateImageModelImplCopyWith<$Res> {
  __$$CreateImageModelImplCopyWithImpl(_$CreateImageModelImpl _value,
      $Res Function(_$CreateImageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filename = null,
    Object? extension = null,
    Object? attachment = null,
    Object? sortOrder = null,
    Object? product = null,
  }) {
    return _then(_$CreateImageModelImpl(
      filename: null == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
              as String,
      extension: null == extension
          ? _value.extension
          : extension // ignore: cast_nullable_to_non_nullable
              as String,
      attachment: null == attachment
          ? _value.attachment
          : attachment // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductCreateIdModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateImageModelImpl implements _CreateImageModel {
  const _$CreateImageModelImpl(
      {required this.filename,
      required this.extension,
      required this.attachment,
      required this.sortOrder,
      required this.product});

  factory _$CreateImageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateImageModelImplFromJson(json);

  @override
  final String filename;
  @override
  final String extension;
  @override
  final String attachment;
  @override
  final int sortOrder;
  @override
  final ProductCreateIdModel product;

  @override
  String toString() {
    return 'CreateImageModel(filename: $filename, extension: $extension, attachment: $attachment, sortOrder: $sortOrder, product: $product)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImageModelImpl &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
            (identical(other.extension, extension) ||
                other.extension == extension) &&
            (identical(other.attachment, attachment) ||
                other.attachment == attachment) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.product, product) || other.product == product));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, filename, extension, attachment, sortOrder, product);

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImageModelImplCopyWith<_$CreateImageModelImpl> get copyWith =>
      __$$CreateImageModelImplCopyWithImpl<_$CreateImageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateImageModelImplToJson(
      this,
    );
  }
}

abstract class _CreateImageModel implements CreateImageModel {
  const factory _CreateImageModel(
      {required final String filename,
      required final String extension,
      required final String attachment,
      required final int sortOrder,
      required final ProductCreateIdModel product}) = _$CreateImageModelImpl;

  factory _CreateImageModel.fromJson(Map<String, dynamic> json) =
      _$CreateImageModelImpl.fromJson;

  @override
  String get filename;
  @override
  String get extension;
  @override
  String get attachment;
  @override
  int get sortOrder;
  @override
  ProductCreateIdModel get product;

  /// Create a copy of CreateImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateImageModelImplCopyWith<_$CreateImageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
