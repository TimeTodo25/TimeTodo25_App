// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoCreateResponse _$TodoCreateResponseFromJson(Map<String, dynamic> json) {
  return _TodoCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoCreateResponse {
  int get idx => throw _privateConstructorUsedError;
  String get categoryTitle => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime get updateDt => throw _privateConstructorUsedError;

  /// Serializes this TodoCreateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoCreateResponseCopyWith<TodoCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCreateResponseCopyWith<$Res> {
  factory $TodoCreateResponseCopyWith(
          TodoCreateResponse value, $Res Function(TodoCreateResponse) then) =
      _$TodoCreateResponseCopyWithImpl<$Res, TodoCreateResponse>;
  @useResult
  $Res call(
      {int idx, String categoryTitle, DateTime createDt, DateTime updateDt});
}

/// @nodoc
class _$TodoCreateResponseCopyWithImpl<$Res, $Val extends TodoCreateResponse>
    implements $TodoCreateResponseCopyWith<$Res> {
  _$TodoCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryTitle = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoCreateResponseImplCopyWith<$Res>
    implements $TodoCreateResponseCopyWith<$Res> {
  factory _$$TodoCreateResponseImplCopyWith(_$TodoCreateResponseImpl value,
          $Res Function(_$TodoCreateResponseImpl) then) =
      __$$TodoCreateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx, String categoryTitle, DateTime createDt, DateTime updateDt});
}

/// @nodoc
class __$$TodoCreateResponseImplCopyWithImpl<$Res>
    extends _$TodoCreateResponseCopyWithImpl<$Res, _$TodoCreateResponseImpl>
    implements _$$TodoCreateResponseImplCopyWith<$Res> {
  __$$TodoCreateResponseImplCopyWithImpl(_$TodoCreateResponseImpl _value,
      $Res Function(_$TodoCreateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryTitle = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_$TodoCreateResponseImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoCreateResponseImpl implements _TodoCreateResponse {
  _$TodoCreateResponseImpl(
      {required this.idx,
      required this.categoryTitle,
      required this.createDt,
      required this.updateDt});

  factory _$TodoCreateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoCreateResponseImplFromJson(json);

  @override
  final int idx;
  @override
  final String categoryTitle;
  @override
  final DateTime createDt;
  @override
  final DateTime updateDt;

  @override
  String toString() {
    return 'TodoCreateResponse(idx: $idx, categoryTitle: $categoryTitle, createDt: $createDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoCreateResponseImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, categoryTitle, createDt, updateDt);

  /// Create a copy of TodoCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoCreateResponseImplCopyWith<_$TodoCreateResponseImpl> get copyWith =>
      __$$TodoCreateResponseImplCopyWithImpl<_$TodoCreateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoCreateResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoCreateResponse implements TodoCreateResponse {
  factory _TodoCreateResponse(
      {required final int idx,
      required final String categoryTitle,
      required final DateTime createDt,
      required final DateTime updateDt}) = _$TodoCreateResponseImpl;

  factory _TodoCreateResponse.fromJson(Map<String, dynamic> json) =
      _$TodoCreateResponseImpl.fromJson;

  @override
  int get idx;
  @override
  String get categoryTitle;
  @override
  DateTime get createDt;
  @override
  DateTime get updateDt;

  /// Create a copy of TodoCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoCreateResponseImplCopyWith<_$TodoCreateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
