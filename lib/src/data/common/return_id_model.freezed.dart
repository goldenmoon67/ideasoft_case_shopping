// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'return_id_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReturnIdModel _$ReturnIdModelFromJson(Map<String, dynamic> json) {
  return _ReturnIdModel.fromJson(json);
}

/// @nodoc
mixin _$ReturnIdModel {
  int get id => throw _privateConstructorUsedError;

  /// Serializes this ReturnIdModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReturnIdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReturnIdModelCopyWith<ReturnIdModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReturnIdModelCopyWith<$Res> {
  factory $ReturnIdModelCopyWith(
          ReturnIdModel value, $Res Function(ReturnIdModel) then) =
      _$ReturnIdModelCopyWithImpl<$Res, ReturnIdModel>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$ReturnIdModelCopyWithImpl<$Res, $Val extends ReturnIdModel>
    implements $ReturnIdModelCopyWith<$Res> {
  _$ReturnIdModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReturnIdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReturnIdModelImplCopyWith<$Res>
    implements $ReturnIdModelCopyWith<$Res> {
  factory _$$ReturnIdModelImplCopyWith(
          _$ReturnIdModelImpl value, $Res Function(_$ReturnIdModelImpl) then) =
      __$$ReturnIdModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$ReturnIdModelImplCopyWithImpl<$Res>
    extends _$ReturnIdModelCopyWithImpl<$Res, _$ReturnIdModelImpl>
    implements _$$ReturnIdModelImplCopyWith<$Res> {
  __$$ReturnIdModelImplCopyWithImpl(
      _$ReturnIdModelImpl _value, $Res Function(_$ReturnIdModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReturnIdModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$ReturnIdModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReturnIdModelImpl implements _ReturnIdModel {
  const _$ReturnIdModelImpl({required this.id});

  factory _$ReturnIdModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReturnIdModelImplFromJson(json);

  @override
  final int id;

  @override
  String toString() {
    return 'ReturnIdModel(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReturnIdModelImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of ReturnIdModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReturnIdModelImplCopyWith<_$ReturnIdModelImpl> get copyWith =>
      __$$ReturnIdModelImplCopyWithImpl<_$ReturnIdModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReturnIdModelImplToJson(
      this,
    );
  }
}

abstract class _ReturnIdModel implements ReturnIdModel {
  const factory _ReturnIdModel({required final int id}) = _$ReturnIdModelImpl;

  factory _ReturnIdModel.fromJson(Map<String, dynamic> json) =
      _$ReturnIdModelImpl.fromJson;

  @override
  int get id;

  /// Create a copy of ReturnIdModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReturnIdModelImplCopyWith<_$ReturnIdModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
