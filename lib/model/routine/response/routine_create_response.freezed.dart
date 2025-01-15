// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_create_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineCreateResponse _$RoutineCreateResponseFromJson(
    Map<String, dynamic> json) {
  return _RoutineCreateResponse.fromJson(json);
}

/// @nodoc
mixin _$RoutineCreateResponse {
  int get idx => throw _privateConstructorUsedError;
  String get cycleType => throw _privateConstructorUsedError;
  String get rm => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime get updateDt => throw _privateConstructorUsedError;

  /// Serializes this RoutineCreateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineCreateResponseCopyWith<RoutineCreateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineCreateResponseCopyWith<$Res> {
  factory $RoutineCreateResponseCopyWith(RoutineCreateResponse value,
          $Res Function(RoutineCreateResponse) then) =
      _$RoutineCreateResponseCopyWithImpl<$Res, RoutineCreateResponse>;
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      String rm,
      DateTime createDt,
      DateTime updateDt});
}

/// @nodoc
class _$RoutineCreateResponseCopyWithImpl<$Res,
        $Val extends RoutineCreateResponse>
    implements $RoutineCreateResponseCopyWith<$Res> {
  _$RoutineCreateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? rm = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      cycleType: null == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String,
      rm: null == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
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
abstract class _$$RoutineCreateResponseImplCopyWith<$Res>
    implements $RoutineCreateResponseCopyWith<$Res> {
  factory _$$RoutineCreateResponseImplCopyWith(
          _$RoutineCreateResponseImpl value,
          $Res Function(_$RoutineCreateResponseImpl) then) =
      __$$RoutineCreateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      String rm,
      DateTime createDt,
      DateTime updateDt});
}

/// @nodoc
class __$$RoutineCreateResponseImplCopyWithImpl<$Res>
    extends _$RoutineCreateResponseCopyWithImpl<$Res,
        _$RoutineCreateResponseImpl>
    implements _$$RoutineCreateResponseImplCopyWith<$Res> {
  __$$RoutineCreateResponseImplCopyWithImpl(_$RoutineCreateResponseImpl _value,
      $Res Function(_$RoutineCreateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? rm = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_$RoutineCreateResponseImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      cycleType: null == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String,
      rm: null == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
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
class _$RoutineCreateResponseImpl implements _RoutineCreateResponse {
  _$RoutineCreateResponseImpl(
      {required this.idx,
      required this.cycleType,
      required this.rm,
      required this.createDt,
      required this.updateDt});

  factory _$RoutineCreateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineCreateResponseImplFromJson(json);

  @override
  final int idx;
  @override
  final String cycleType;
  @override
  final String rm;
  @override
  final DateTime createDt;
  @override
  final DateTime updateDt;

  @override
  String toString() {
    return 'RoutineCreateResponse(idx: $idx, cycleType: $cycleType, rm: $rm, createDt: $createDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineCreateResponseImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.cycleType, cycleType) ||
                other.cycleType == cycleType) &&
            (identical(other.rm, rm) || other.rm == rm) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, cycleType, rm, createDt, updateDt);

  /// Create a copy of RoutineCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineCreateResponseImplCopyWith<_$RoutineCreateResponseImpl>
      get copyWith => __$$RoutineCreateResponseImplCopyWithImpl<
          _$RoutineCreateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineCreateResponseImplToJson(
      this,
    );
  }
}

abstract class _RoutineCreateResponse implements RoutineCreateResponse {
  factory _RoutineCreateResponse(
      {required final int idx,
      required final String cycleType,
      required final String rm,
      required final DateTime createDt,
      required final DateTime updateDt}) = _$RoutineCreateResponseImpl;

  factory _RoutineCreateResponse.fromJson(Map<String, dynamic> json) =
      _$RoutineCreateResponseImpl.fromJson;

  @override
  int get idx;
  @override
  String get cycleType;
  @override
  String get rm;
  @override
  DateTime get createDt;
  @override
  DateTime get updateDt;

  /// Create a copy of RoutineCreateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineCreateResponseImplCopyWith<_$RoutineCreateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
