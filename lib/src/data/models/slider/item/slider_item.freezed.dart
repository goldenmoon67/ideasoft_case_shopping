// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SliderItem _$SliderItemFromJson(Map<String, dynamic> json) {
  return _SliderItem.fromJson(json);
}

/// @nodoc
mixin _$SliderItem {
  int get index => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  int get sortOrder => throw _privateConstructorUsedError;
  int get targetBlankStatus => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  /// Serializes this SliderItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SliderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderItemCopyWith<SliderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderItemCopyWith<$Res> {
  factory $SliderItemCopyWith(
          SliderItem value, $Res Function(SliderItem) then) =
      _$SliderItemCopyWithImpl<$Res, SliderItem>;
  @useResult
  $Res call(
      {int index,
      String link,
      int sortOrder,
      int targetBlankStatus,
      int status,
      String imageUrl,
      String description});
}

/// @nodoc
class _$SliderItemCopyWithImpl<$Res, $Val extends SliderItem>
    implements $SliderItemCopyWith<$Res> {
  _$SliderItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SliderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? link = null,
    Object? sortOrder = null,
    Object? targetBlankStatus = null,
    Object? status = null,
    Object? imageUrl = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      targetBlankStatus: null == targetBlankStatus
          ? _value.targetBlankStatus
          : targetBlankStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderItemImplCopyWith<$Res>
    implements $SliderItemCopyWith<$Res> {
  factory _$$SliderItemImplCopyWith(
          _$SliderItemImpl value, $Res Function(_$SliderItemImpl) then) =
      __$$SliderItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int index,
      String link,
      int sortOrder,
      int targetBlankStatus,
      int status,
      String imageUrl,
      String description});
}

/// @nodoc
class __$$SliderItemImplCopyWithImpl<$Res>
    extends _$SliderItemCopyWithImpl<$Res, _$SliderItemImpl>
    implements _$$SliderItemImplCopyWith<$Res> {
  __$$SliderItemImplCopyWithImpl(
      _$SliderItemImpl _value, $Res Function(_$SliderItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of SliderItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? link = null,
    Object? sortOrder = null,
    Object? targetBlankStatus = null,
    Object? status = null,
    Object? imageUrl = null,
    Object? description = null,
  }) {
    return _then(_$SliderItemImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: null == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int,
      targetBlankStatus: null == targetBlankStatus
          ? _value.targetBlankStatus
          : targetBlankStatus // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderItemImpl implements _SliderItem {
  const _$SliderItemImpl(
      {required this.index,
      required this.link,
      required this.sortOrder,
      required this.targetBlankStatus,
      required this.status,
      required this.imageUrl,
      required this.description});

  factory _$SliderItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderItemImplFromJson(json);

  @override
  final int index;
  @override
  final String link;
  @override
  final int sortOrder;
  @override
  final int targetBlankStatus;
  @override
  final int status;
  @override
  final String imageUrl;
  @override
  final String description;

  @override
  String toString() {
    return 'SliderItem(index: $index, link: $link, sortOrder: $sortOrder, targetBlankStatus: $targetBlankStatus, status: $status, imageUrl: $imageUrl, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderItemImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.targetBlankStatus, targetBlankStatus) ||
                other.targetBlankStatus == targetBlankStatus) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, index, link, sortOrder,
      targetBlankStatus, status, imageUrl, description);

  /// Create a copy of SliderItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderItemImplCopyWith<_$SliderItemImpl> get copyWith =>
      __$$SliderItemImplCopyWithImpl<_$SliderItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderItemImplToJson(
      this,
    );
  }
}

abstract class _SliderItem implements SliderItem {
  const factory _SliderItem(
      {required final int index,
      required final String link,
      required final int sortOrder,
      required final int targetBlankStatus,
      required final int status,
      required final String imageUrl,
      required final String description}) = _$SliderItemImpl;

  factory _SliderItem.fromJson(Map<String, dynamic> json) =
      _$SliderItemImpl.fromJson;

  @override
  int get index;
  @override
  String get link;
  @override
  int get sortOrder;
  @override
  int get targetBlankStatus;
  @override
  int get status;
  @override
  String get imageUrl;
  @override
  String get description;

  /// Create a copy of SliderItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderItemImplCopyWith<_$SliderItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
