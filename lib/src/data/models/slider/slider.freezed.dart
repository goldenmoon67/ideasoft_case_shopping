// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'slider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Slider _$SliderFromJson(Map<String, dynamic> json) {
  return _Slider.fromJson(json);
}

/// @nodoc
mixin _$Slider {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  int get predefined => throw _privateConstructorUsedError;
  List<SliderItem> get items => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this Slider to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Slider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SliderCopyWith<Slider> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SliderCopyWith<$Res> {
  factory $SliderCopyWith(Slider value, $Res Function(Slider) then) =
      _$SliderCopyWithImpl<$Res, Slider>;
  @useResult
  $Res call(
      {int id,
      String description,
      int status,
      int predefined,
      List<SliderItem> items,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class _$SliderCopyWithImpl<$Res, $Val extends Slider>
    implements $SliderCopyWith<$Res> {
  _$SliderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Slider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? status = null,
    Object? predefined = null,
    Object? items = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      predefined: null == predefined
          ? _value.predefined
          : predefined // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SliderItem>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SliderImplCopyWith<$Res> implements $SliderCopyWith<$Res> {
  factory _$$SliderImplCopyWith(
          _$SliderImpl value, $Res Function(_$SliderImpl) then) =
      __$$SliderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String description,
      int status,
      int predefined,
      List<SliderItem> items,
      DateTime updatedAt,
      DateTime createdAt});
}

/// @nodoc
class __$$SliderImplCopyWithImpl<$Res>
    extends _$SliderCopyWithImpl<$Res, _$SliderImpl>
    implements _$$SliderImplCopyWith<$Res> {
  __$$SliderImplCopyWithImpl(
      _$SliderImpl _value, $Res Function(_$SliderImpl) _then)
      : super(_value, _then);

  /// Create a copy of Slider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? description = null,
    Object? status = null,
    Object? predefined = null,
    Object? items = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$SliderImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      predefined: null == predefined
          ? _value.predefined
          : predefined // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<SliderItem>,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SliderImpl implements _Slider {
  const _$SliderImpl(
      {required this.id,
      required this.description,
      required this.status,
      required this.predefined,
      required final List<SliderItem> items,
      required this.updatedAt,
      required this.createdAt})
      : _items = items;

  factory _$SliderImpl.fromJson(Map<String, dynamic> json) =>
      _$$SliderImplFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final int status;
  @override
  final int predefined;
  final List<SliderItem> _items;
  @override
  List<SliderItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'Slider(id: $id, description: $description, status: $status, predefined: $predefined, items: $items, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SliderImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.predefined, predefined) ||
                other.predefined == predefined) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      description,
      status,
      predefined,
      const DeepCollectionEquality().hash(_items),
      updatedAt,
      createdAt);

  /// Create a copy of Slider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SliderImplCopyWith<_$SliderImpl> get copyWith =>
      __$$SliderImplCopyWithImpl<_$SliderImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SliderImplToJson(
      this,
    );
  }
}

abstract class _Slider implements Slider {
  const factory _Slider(
      {required final int id,
      required final String description,
      required final int status,
      required final int predefined,
      required final List<SliderItem> items,
      required final DateTime updatedAt,
      required final DateTime createdAt}) = _$SliderImpl;

  factory _Slider.fromJson(Map<String, dynamic> json) = _$SliderImpl.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  int get status;
  @override
  int get predefined;
  @override
  List<SliderItem> get items;
  @override
  DateTime get updatedAt;
  @override
  DateTime get createdAt;

  /// Create a copy of Slider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SliderImplCopyWith<_$SliderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
