// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_timer_register_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoTimerRegisterResponse _$TodoTimerRegisterResponseFromJson(
    Map<String, dynamic> json) {
  return _TodoTimerRegisterResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoTimerRegisterResponse {
  @DateTimeIsoConverter()
  DateTime get updateDt => throw _privateConstructorUsedError;
  List<int> get timerIdxList => throw _privateConstructorUsedError;

  /// Serializes this TodoTimerRegisterResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoTimerRegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoTimerRegisterResponseCopyWith<TodoTimerRegisterResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTimerRegisterResponseCopyWith<$Res> {
  factory $TodoTimerRegisterResponseCopyWith(TodoTimerRegisterResponse value,
          $Res Function(TodoTimerRegisterResponse) then) =
      _$TodoTimerRegisterResponseCopyWithImpl<$Res, TodoTimerRegisterResponse>;
  @useResult
  $Res call(
      {@DateTimeIsoConverter() DateTime updateDt, List<int> timerIdxList});
}

/// @nodoc
class _$TodoTimerRegisterResponseCopyWithImpl<$Res,
        $Val extends TodoTimerRegisterResponse>
    implements $TodoTimerRegisterResponseCopyWith<$Res> {
  _$TodoTimerRegisterResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoTimerRegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateDt = null,
    Object? timerIdxList = null,
  }) {
    return _then(_value.copyWith(
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timerIdxList: null == timerIdxList
          ? _value.timerIdxList
          : timerIdxList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoTimerRegisterResponseImplCopyWith<$Res>
    implements $TodoTimerRegisterResponseCopyWith<$Res> {
  factory _$$TodoTimerRegisterResponseImplCopyWith(
          _$TodoTimerRegisterResponseImpl value,
          $Res Function(_$TodoTimerRegisterResponseImpl) then) =
      __$$TodoTimerRegisterResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@DateTimeIsoConverter() DateTime updateDt, List<int> timerIdxList});
}

/// @nodoc
class __$$TodoTimerRegisterResponseImplCopyWithImpl<$Res>
    extends _$TodoTimerRegisterResponseCopyWithImpl<$Res,
        _$TodoTimerRegisterResponseImpl>
    implements _$$TodoTimerRegisterResponseImplCopyWith<$Res> {
  __$$TodoTimerRegisterResponseImplCopyWithImpl(
      _$TodoTimerRegisterResponseImpl _value,
      $Res Function(_$TodoTimerRegisterResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoTimerRegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateDt = null,
    Object? timerIdxList = null,
  }) {
    return _then(_$TodoTimerRegisterResponseImpl(
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      timerIdxList: null == timerIdxList
          ? _value._timerIdxList
          : timerIdxList // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoTimerRegisterResponseImpl implements _TodoTimerRegisterResponse {
  _$TodoTimerRegisterResponseImpl(
      {@DateTimeIsoConverter() required this.updateDt,
      required final List<int> timerIdxList})
      : _timerIdxList = timerIdxList;

  factory _$TodoTimerRegisterResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoTimerRegisterResponseImplFromJson(json);

  @override
  @DateTimeIsoConverter()
  final DateTime updateDt;
  final List<int> _timerIdxList;
  @override
  List<int> get timerIdxList {
    if (_timerIdxList is EqualUnmodifiableListView) return _timerIdxList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timerIdxList);
  }

  @override
  String toString() {
    return 'TodoTimerRegisterResponse(updateDt: $updateDt, timerIdxList: $timerIdxList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoTimerRegisterResponseImpl &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            const DeepCollectionEquality()
                .equals(other._timerIdxList, _timerIdxList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updateDt,
      const DeepCollectionEquality().hash(_timerIdxList));

  /// Create a copy of TodoTimerRegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoTimerRegisterResponseImplCopyWith<_$TodoTimerRegisterResponseImpl>
      get copyWith => __$$TodoTimerRegisterResponseImplCopyWithImpl<
          _$TodoTimerRegisterResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoTimerRegisterResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoTimerRegisterResponse implements TodoTimerRegisterResponse {
  factory _TodoTimerRegisterResponse(
      {@DateTimeIsoConverter() required final DateTime updateDt,
      required final List<int> timerIdxList}) = _$TodoTimerRegisterResponseImpl;

  factory _TodoTimerRegisterResponse.fromJson(Map<String, dynamic> json) =
      _$TodoTimerRegisterResponseImpl.fromJson;

  @override
  @DateTimeIsoConverter()
  DateTime get updateDt;
  @override
  List<int> get timerIdxList;

  /// Create a copy of TodoTimerRegisterResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoTimerRegisterResponseImplCopyWith<_$TodoTimerRegisterResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
