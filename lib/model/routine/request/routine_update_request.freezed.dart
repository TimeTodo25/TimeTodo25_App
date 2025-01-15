// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RoutineUpdateRequest _$RoutineUpdateRequestFromJson(Map<String, dynamic> json) {
  return _RoutineUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$RoutineUpdateRequest {
  int get idx => throw _privateConstructorUsedError;
  String get cycleType => throw _privateConstructorUsedError;
  List<int> get cycleValue => throw _privateConstructorUsedError;
  DateTime? get startDt => throw _privateConstructorUsedError;
  DateTime? get endDt => throw _privateConstructorUsedError;
  TimeInfo? get startTm => throw _privateConstructorUsedError;
  TimeInfo? get endTm => throw _privateConstructorUsedError;

  /// Serializes this RoutineUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineUpdateRequestCopyWith<RoutineUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineUpdateRequestCopyWith<$Res> {
  factory $RoutineUpdateRequestCopyWith(RoutineUpdateRequest value,
          $Res Function(RoutineUpdateRequest) then) =
      _$RoutineUpdateRequestCopyWithImpl<$Res, RoutineUpdateRequest>;
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      List<int> cycleValue,
      DateTime? startDt,
      DateTime? endDt,
      TimeInfo? startTm,
      TimeInfo? endTm});

  $TimeInfoCopyWith<$Res>? get startTm;
  $TimeInfoCopyWith<$Res>? get endTm;
}

/// @nodoc
class _$RoutineUpdateRequestCopyWithImpl<$Res,
        $Val extends RoutineUpdateRequest>
    implements $RoutineUpdateRequestCopyWith<$Res> {
  _$RoutineUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
    Object? startTm = freezed,
    Object? endTm = freezed,
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
      startTm: freezed == startTm
          ? _value.startTm
          : startTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo?,
      endTm: freezed == endTm
          ? _value.endTm
          : endTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo?,
    ) as $Val);
  }

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeInfoCopyWith<$Res>? get startTm {
    if (_value.startTm == null) {
      return null;
    }

    return $TimeInfoCopyWith<$Res>(_value.startTm!, (value) {
      return _then(_value.copyWith(startTm: value) as $Val);
    });
  }

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeInfoCopyWith<$Res>? get endTm {
    if (_value.endTm == null) {
      return null;
    }

    return $TimeInfoCopyWith<$Res>(_value.endTm!, (value) {
      return _then(_value.copyWith(endTm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RoutineUpdateRequestImplCopyWith<$Res>
    implements $RoutineUpdateRequestCopyWith<$Res> {
  factory _$$RoutineUpdateRequestImplCopyWith(_$RoutineUpdateRequestImpl value,
          $Res Function(_$RoutineUpdateRequestImpl) then) =
      __$$RoutineUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String cycleType,
      List<int> cycleValue,
      DateTime? startDt,
      DateTime? endDt,
      TimeInfo? startTm,
      TimeInfo? endTm});

  @override
  $TimeInfoCopyWith<$Res>? get startTm;
  @override
  $TimeInfoCopyWith<$Res>? get endTm;
}

/// @nodoc
class __$$RoutineUpdateRequestImplCopyWithImpl<$Res>
    extends _$RoutineUpdateRequestCopyWithImpl<$Res, _$RoutineUpdateRequestImpl>
    implements _$$RoutineUpdateRequestImplCopyWith<$Res> {
  __$$RoutineUpdateRequestImplCopyWithImpl(_$RoutineUpdateRequestImpl _value,
      $Res Function(_$RoutineUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? startDt = freezed,
    Object? endDt = freezed,
    Object? startTm = freezed,
    Object? endTm = freezed,
  }) {
    return _then(_$RoutineUpdateRequestImpl(
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
      startTm: freezed == startTm
          ? _value.startTm
          : startTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo?,
      endTm: freezed == endTm
          ? _value.endTm
          : endTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineUpdateRequestImpl implements _RoutineUpdateRequest {
  _$RoutineUpdateRequestImpl(
      {required this.idx,
      required this.cycleType,
      required final List<int> cycleValue,
      this.startDt,
      this.endDt,
      this.startTm,
      this.endTm})
      : _cycleValue = cycleValue;

  factory _$RoutineUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineUpdateRequestImplFromJson(json);

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
  final TimeInfo? startTm;
  @override
  final TimeInfo? endTm;

  @override
  String toString() {
    return 'RoutineUpdateRequest(idx: $idx, cycleType: $cycleType, cycleValue: $cycleValue, startDt: $startDt, endDt: $endDt, startTm: $startTm, endTm: $endTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineUpdateRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.cycleType, cycleType) ||
                other.cycleType == cycleType) &&
            const DeepCollectionEquality()
                .equals(other._cycleValue, _cycleValue) &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt) &&
            (identical(other.startTm, startTm) || other.startTm == startTm) &&
            (identical(other.endTm, endTm) || other.endTm == endTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      cycleType,
      const DeepCollectionEquality().hash(_cycleValue),
      startDt,
      endDt,
      startTm,
      endTm);

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineUpdateRequestImplCopyWith<_$RoutineUpdateRequestImpl>
      get copyWith =>
          __$$RoutineUpdateRequestImplCopyWithImpl<_$RoutineUpdateRequestImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _RoutineUpdateRequest implements RoutineUpdateRequest {
  factory _RoutineUpdateRequest(
      {required final int idx,
      required final String cycleType,
      required final List<int> cycleValue,
      final DateTime? startDt,
      final DateTime? endDt,
      final TimeInfo? startTm,
      final TimeInfo? endTm}) = _$RoutineUpdateRequestImpl;

  factory _RoutineUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$RoutineUpdateRequestImpl.fromJson;

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
  @override
  TimeInfo? get startTm;
  @override
  TimeInfo? get endTm;

  /// Create a copy of RoutineUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineUpdateRequestImplCopyWith<_$RoutineUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
