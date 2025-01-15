// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineCreateRequest _$RoutineCreateRequestFromJson(Map<String, dynamic> json) {
  return _RoutineCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$RoutineCreateRequest {
  int get idx => throw _privateConstructorUsedError;
  String get cycleType => throw _privateConstructorUsedError;
  List<int> get cycleValue => throw _privateConstructorUsedError;
  DateTime? get startDt => throw _privateConstructorUsedError;
  DateTime? get endDt => throw _privateConstructorUsedError;

  /// Serializes this RoutineCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineCreateRequestCopyWith<RoutineCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineCreateRequestCopyWith<$Res> {
  factory $RoutineCreateRequestCopyWith(RoutineCreateRequest value,
          $Res Function(RoutineCreateRequest) then) =
      _$RoutineCreateRequestCopyWithImpl<$Res, RoutineCreateRequest>;
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      List<int> cycleValue,
      DateTime? startDt,
      DateTime? endDt});
}

/// @nodoc
class _$RoutineCreateRequestCopyWithImpl<$Res,
        $Val extends RoutineCreateRequest>
    implements $RoutineCreateRequestCopyWith<$Res> {
  _$RoutineCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
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
      cycleValue: null == cycleValue
          ? _value.cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as List<int>,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineCreateRequestImplCopyWith<$Res>
    implements $RoutineCreateRequestCopyWith<$Res> {
  factory _$$RoutineCreateRequestImplCopyWith(_$RoutineCreateRequestImpl value,
          $Res Function(_$RoutineCreateRequestImpl) then) =
      __$$RoutineCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      List<int> cycleValue,
      DateTime? startDt,
      DateTime? endDt});
}

/// @nodoc
class __$$RoutineCreateRequestImplCopyWithImpl<$Res>
    extends _$RoutineCreateRequestCopyWithImpl<$Res, _$RoutineCreateRequestImpl>
    implements _$$RoutineCreateRequestImplCopyWith<$Res> {
  __$$RoutineCreateRequestImplCopyWithImpl(_$RoutineCreateRequestImpl _value,
      $Res Function(_$RoutineCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
  }) {
    return _then(_$RoutineCreateRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      cycleType: null == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String,
      cycleValue: null == cycleValue
          ? _value._cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as List<int>,
      startDt: freezed == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDt: freezed == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineCreateRequestImpl implements _RoutineCreateRequest {
  _$RoutineCreateRequestImpl(
      {required this.idx,
      required this.cycleType,
      required final List<int> cycleValue,
      this.startDt,
      this.endDt})
      : _cycleValue = cycleValue;

  factory _$RoutineCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineCreateRequestImplFromJson(json);

  @override
  final int idx;
  @override
  final String cycleType;
  final List<int> _cycleValue;
  @override
  List<int> get cycleValue {
    if (_cycleValue is EqualUnmodifiableListView) return _cycleValue;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cycleValue);
  }

  @override
  final DateTime? startDt;
  @override
  final DateTime? endDt;

  @override
  String toString() {
    return 'RoutineCreateRequest(idx: $idx, cycleType: $cycleType, cycleValue: $cycleValue, startDt: $startDt, endDt: $endDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineCreateRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.cycleType, cycleType) ||
                other.cycleType == cycleType) &&
            const DeepCollectionEquality()
                .equals(other._cycleValue, _cycleValue) &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, cycleType,
      const DeepCollectionEquality().hash(_cycleValue), startDt, endDt);

  /// Create a copy of RoutineCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineCreateRequestImplCopyWith<_$RoutineCreateRequestImpl>
      get copyWith =>
          __$$RoutineCreateRequestImplCopyWithImpl<_$RoutineCreateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _RoutineCreateRequest implements RoutineCreateRequest {
  factory _RoutineCreateRequest(
      {required final int idx,
      required final String cycleType,
      required final List<int> cycleValue,
      final DateTime? startDt,
      final DateTime? endDt}) = _$RoutineCreateRequestImpl;

  factory _RoutineCreateRequest.fromJson(Map<String, dynamic> json) =
      _$RoutineCreateRequestImpl.fromJson;

  @override
  int get idx;
  @override
  String get cycleType;
  @override
  List<int> get cycleValue;
  @override
  DateTime? get startDt;
  @override
  DateTime? get endDt;

  /// Create a copy of RoutineCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineCreateRequestImplCopyWith<_$RoutineCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
