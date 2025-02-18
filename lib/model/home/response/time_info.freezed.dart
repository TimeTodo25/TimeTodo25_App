// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'time_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimeInfo _$TimeInfoFromJson(Map<String, dynamic> json) {
  return _TimeInfo.fromJson(json);
}

/// @nodoc
mixin _$TimeInfo {
  int get hour => throw _privateConstructorUsedError;
  int get minute => throw _privateConstructorUsedError;
  int get second => throw _privateConstructorUsedError;

  /// Serializes this TimeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimeInfoCopyWith<TimeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeInfoCopyWith<$Res> {
  factory $TimeInfoCopyWith(TimeInfo value, $Res Function(TimeInfo) then) =
      _$TimeInfoCopyWithImpl<$Res, TimeInfo>;
  @useResult
  $Res call({int hour, int minute, int second});
}

/// @nodoc
class _$TimeInfoCopyWithImpl<$Res, $Val extends TimeInfo>
    implements $TimeInfoCopyWith<$Res> {
  _$TimeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_value.copyWith(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimeInfoImplCopyWith<$Res>
    implements $TimeInfoCopyWith<$Res> {
  factory _$$TimeInfoImplCopyWith(
          _$TimeInfoImpl value, $Res Function(_$TimeInfoImpl) then) =
      __$$TimeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int hour, int minute, int second});
}

/// @nodoc
class __$$TimeInfoImplCopyWithImpl<$Res>
    extends _$TimeInfoCopyWithImpl<$Res, _$TimeInfoImpl>
    implements _$$TimeInfoImplCopyWith<$Res> {
  __$$TimeInfoImplCopyWithImpl(
      _$TimeInfoImpl _value, $Res Function(_$TimeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hour = null,
    Object? minute = null,
    Object? second = null,
  }) {
    return _then(_$TimeInfoImpl(
      hour: null == hour
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: null == minute
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeInfoImpl implements _TimeInfo {
  _$TimeInfoImpl(
      {required this.hour, required this.minute, required this.second});

  factory _$TimeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeInfoImplFromJson(json);

  @override
  final int hour;
  @override
  final int minute;
  @override
  final int second;

  @override
  String toString() {
    return 'TimeInfo(hour: $hour, minute: $minute, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimeInfoImpl &&
            (identical(other.hour, hour) || other.hour == hour) &&
            (identical(other.minute, minute) || other.minute == minute) &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hour, minute, second);

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeInfoImplCopyWith<_$TimeInfoImpl> get copyWith =>
      __$$TimeInfoImplCopyWithImpl<_$TimeInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimeInfoImplToJson(
      this,
    );
  }
}

abstract class _TimeInfo implements TimeInfo {
  factory _TimeInfo(
      {required final int hour,
      required final int minute,
      required final int second}) = _$TimeInfoImpl;

  factory _TimeInfo.fromJson(Map<String, dynamic> json) =
      _$TimeInfoImpl.fromJson;

  @override
  int get hour;
  @override
  int get minute;
  @override
  int get second;

  /// Create a copy of TimeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimeInfoImplCopyWith<_$TimeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
