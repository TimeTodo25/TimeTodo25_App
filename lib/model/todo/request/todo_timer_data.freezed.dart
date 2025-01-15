// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_timer_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoTimerData _$TodoTimerDataFromJson(Map<String, dynamic> json) {
  return _TodoTimerData.fromJson(json);
}

/// @nodoc
mixin _$TodoTimerData {
  DateTime get startDt => throw _privateConstructorUsedError;
  DateTime get endDt => throw _privateConstructorUsedError;

  /// Serializes this TodoTimerData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoTimerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoTimerDataCopyWith<TodoTimerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTimerDataCopyWith<$Res> {
  factory $TodoTimerDataCopyWith(
          TodoTimerData value, $Res Function(TodoTimerData) then) =
      _$TodoTimerDataCopyWithImpl<$Res, TodoTimerData>;
  @useResult
  $Res call({DateTime startDt, DateTime endDt});
}

/// @nodoc
class _$TodoTimerDataCopyWithImpl<$Res, $Val extends TodoTimerData>
    implements $TodoTimerDataCopyWith<$Res> {
  _$TodoTimerDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoTimerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDt = null,
    Object? endDt = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoTimerDataImplCopyWith<$Res>
    implements $TodoTimerDataCopyWith<$Res> {
  factory _$$TodoTimerDataImplCopyWith(
          _$TodoTimerDataImpl value, $Res Function(_$TodoTimerDataImpl) then) =
      __$$TodoTimerDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DateTime startDt, DateTime endDt});
}

/// @nodoc
class __$$TodoTimerDataImplCopyWithImpl<$Res>
    extends _$TodoTimerDataCopyWithImpl<$Res, _$TodoTimerDataImpl>
    implements _$$TodoTimerDataImplCopyWith<$Res> {
  __$$TodoTimerDataImplCopyWithImpl(
      _$TodoTimerDataImpl _value, $Res Function(_$TodoTimerDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoTimerData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? startDt = null,
    Object? endDt = null,
  }) {
    return _then(_$TodoTimerDataImpl(
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDt: null == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoTimerDataImpl implements _TodoTimerData {
  _$TodoTimerDataImpl({required this.startDt, required this.endDt});

  factory _$TodoTimerDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoTimerDataImplFromJson(json);

  @override
  final DateTime startDt;
  @override
  final DateTime endDt;

  @override
  String toString() {
    return 'TodoTimerData(startDt: $startDt, endDt: $endDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoTimerDataImpl &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, startDt, endDt);

  /// Create a copy of TodoTimerData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoTimerDataImplCopyWith<_$TodoTimerDataImpl> get copyWith =>
      __$$TodoTimerDataImplCopyWithImpl<_$TodoTimerDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoTimerDataImplToJson(
      this,
    );
  }
}

abstract class _TodoTimerData implements TodoTimerData {
  factory _TodoTimerData(
      {required final DateTime startDt,
      required final DateTime endDt}) = _$TodoTimerDataImpl;

  factory _TodoTimerData.fromJson(Map<String, dynamic> json) =
      _$TodoTimerDataImpl.fromJson;

  @override
  DateTime get startDt;
  @override
  DateTime get endDt;

  /// Create a copy of TodoTimerData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoTimerDataImplCopyWith<_$TodoTimerDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
