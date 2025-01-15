// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_histories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimerHistories _$TimerHistoriesFromJson(Map<String, dynamic> json) {
  return _TimerHistories.fromJson(json);
}

/// @nodoc
mixin _$TimerHistories {
  DateTime get startDt => throw _privateConstructorUsedError;
  DateTime get endDt => throw _privateConstructorUsedError;
  String get totalTm => throw _privateConstructorUsedError;

  /// Serializes this TimerHistories to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerHistories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerHistoriesCopyWith<TimerHistories> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerHistoriesCopyWith<$Res> {
  factory $TimerHistoriesCopyWith(
          TimerHistories value, $Res Function(TimerHistories) then) =
      _$TimerHistoriesCopyWithImpl<$Res, TimerHistories>;
  @useResult
  $Res call({DateTime startDt, DateTime endDt, String totalTm});
}

/// @nodoc
class _$TimerHistoriesCopyWithImpl<$Res, $Val extends TimerHistories>
    implements $TimerHistoriesCopyWith<$Res> {
  _$TimerHistoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerHistories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDt = null,
    Object? endDt = null,
    Object? totalTm = null,
  }) {
    return _then(_value.copyWith(
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDt: null == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalTm: null == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimerHistoriesImplCopyWith<$Res>
    implements $TimerHistoriesCopyWith<$Res> {
  factory _$$TimerHistoriesImplCopyWith(_$TimerHistoriesImpl value,
          $Res Function(_$TimerHistoriesImpl) then) =
      __$$TimerHistoriesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDt, DateTime endDt, String totalTm});
}

/// @nodoc
class __$$TimerHistoriesImplCopyWithImpl<$Res>
    extends _$TimerHistoriesCopyWithImpl<$Res, _$TimerHistoriesImpl>
    implements _$$TimerHistoriesImplCopyWith<$Res> {
  __$$TimerHistoriesImplCopyWithImpl(
      _$TimerHistoriesImpl _value, $Res Function(_$TimerHistoriesImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerHistories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDt = null,
    Object? endDt = null,
    Object? totalTm = null,
  }) {
    return _then(_$TimerHistoriesImpl(
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDt: null == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      totalTm: null == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimerHistoriesImpl implements _TimerHistories {
  _$TimerHistoriesImpl(
      {required this.startDt, required this.endDt, required this.totalTm});

  factory _$TimerHistoriesImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerHistoriesImplFromJson(json);

  @override
  final DateTime startDt;
  @override
  final DateTime endDt;
  @override
  final String totalTm;

  @override
  String toString() {
    return 'TimerHistories(startDt: $startDt, endDt: $endDt, totalTm: $totalTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerHistoriesImpl &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt) &&
            (identical(other.totalTm, totalTm) || other.totalTm == totalTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDt, endDt, totalTm);

  /// Create a copy of TimerHistories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerHistoriesImplCopyWith<_$TimerHistoriesImpl> get copyWith =>
      __$$TimerHistoriesImplCopyWithImpl<_$TimerHistoriesImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerHistoriesImplToJson(
      this,
    );
  }
}

abstract class _TimerHistories implements TimerHistories {
  factory _TimerHistories(
      {required final DateTime startDt,
      required final DateTime endDt,
      required final String totalTm}) = _$TimerHistoriesImpl;

  factory _TimerHistories.fromJson(Map<String, dynamic> json) =
      _$TimerHistoriesImpl.fromJson;

  @override
  DateTime get startDt;
  @override
  DateTime get endDt;
  @override
  String get totalTm;

  /// Create a copy of TimerHistories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerHistoriesImplCopyWith<_$TimerHistoriesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
