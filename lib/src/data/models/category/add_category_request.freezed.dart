// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_category_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddCategoryRequest _$AddCategoryRequestFromJson(Map<String, dynamic> json) {
  return _AddCategoryRequest.fromJson(json);
}

/// @nodoc
mixin _$AddCategoryRequest {
  String get name => throw _privateConstructorUsedError;
  int? get sortOrder => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int? get percent => throw _privateConstructorUsedError;

  /// Serializes this AddCategoryRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddCategoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddCategoryRequestCopyWith<AddCategoryRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddCategoryRequestCopyWith<$Res> {
  factory $AddCategoryRequestCopyWith(
          AddCategoryRequest value, $Res Function(AddCategoryRequest) then) =
      _$AddCategoryRequestCopyWithImpl<$Res, AddCategoryRequest>;
  @useResult
  $Res call({String name, int? sortOrder, int status, int? percent});
}

/// @nodoc
class _$AddCategoryRequestCopyWithImpl<$Res, $Val extends AddCategoryRequest>
    implements $AddCategoryRequestCopyWith<$Res> {
  _$AddCategoryRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddCategoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortOrder = freezed,
    Object? status = null,
    Object? percent = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddCategoryRequestImplCopyWith<$Res>
    implements $AddCategoryRequestCopyWith<$Res> {
  factory _$$AddCategoryRequestImplCopyWith(_$AddCategoryRequestImpl value,
          $Res Function(_$AddCategoryRequestImpl) then) =
      __$$AddCategoryRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int? sortOrder, int status, int? percent});
}

/// @nodoc
class __$$AddCategoryRequestImplCopyWithImpl<$Res>
    extends _$AddCategoryRequestCopyWithImpl<$Res, _$AddCategoryRequestImpl>
    implements _$$AddCategoryRequestImplCopyWith<$Res> {
  __$$AddCategoryRequestImplCopyWithImpl(_$AddCategoryRequestImpl _value,
      $Res Function(_$AddCategoryRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddCategoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? sortOrder = freezed,
    Object? status = null,
    Object? percent = freezed,
  }) {
    return _then(_$AddCategoryRequestImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      sortOrder: freezed == sortOrder
          ? _value.sortOrder
          : sortOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      percent: freezed == percent
          ? _value.percent
          : percent // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddCategoryRequestImpl implements _AddCategoryRequest {
  const _$AddCategoryRequestImpl(
      {required this.name,
      required this.sortOrder,
      required this.status,
      required this.percent});

  factory _$AddCategoryRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddCategoryRequestImplFromJson(json);

  @override
  final String name;
  @override
  final int? sortOrder;
  @override
  final int status;
  @override
  final int? percent;

  @override
  String toString() {
    return 'AddCategoryRequest(name: $name, sortOrder: $sortOrder, status: $status, percent: $percent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCategoryRequestImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.sortOrder, sortOrder) ||
                other.sortOrder == sortOrder) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.percent, percent) || other.percent == percent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, sortOrder, status, percent);

  /// Create a copy of AddCategoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCategoryRequestImplCopyWith<_$AddCategoryRequestImpl> get copyWith =>
      __$$AddCategoryRequestImplCopyWithImpl<_$AddCategoryRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddCategoryRequestImplToJson(
      this,
    );
  }
}

abstract class _AddCategoryRequest implements AddCategoryRequest {
  const factory _AddCategoryRequest(
      {required final String name,
      required final int? sortOrder,
      required final int status,
      required final int? percent}) = _$AddCategoryRequestImpl;

  factory _AddCategoryRequest.fromJson(Map<String, dynamic> json) =
      _$AddCategoryRequestImpl.fromJson;

  @override
  String get name;
  @override
  int? get sortOrder;
  @override
  int get status;
  @override
  int? get percent;

  /// Create a copy of AddCategoryRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddCategoryRequestImplCopyWith<_$AddCategoryRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
