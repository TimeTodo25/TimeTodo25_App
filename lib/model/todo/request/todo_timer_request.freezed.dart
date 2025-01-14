// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_timer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoTimerRequest _$TodoTimerRequestFromJson(Map<String, dynamic> json) {
  return _TodoTimerRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoTimerRequest {
  int get idx => throw _privateConstructorUsedError;
  List<TodoTimerData> get timerData => throw _privateConstructorUsedError;

  /// Serializes this TodoTimerRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoTimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoTimerRequestCopyWith<TodoTimerRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoTimerRequestCopyWith<$Res> {
  factory $TodoTimerRequestCopyWith(
          TodoTimerRequest value, $Res Function(TodoTimerRequest) then) =
      _$TodoTimerRequestCopyWithImpl<$Res, TodoTimerRequest>;
  @useResult
  $Res call({int idx, List<TodoTimerData> timerData});
}

/// @nodoc
class _$TodoTimerRequestCopyWithImpl<$Res, $Val extends TodoTimerRequest>
    implements $TodoTimerRequestCopyWith<$Res> {
  _$TodoTimerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoTimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? timerData = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      timerData: null == timerData
          ? _value.timerData
          : timerData // ignore: cast_nullable_to_non_nullable
              as List<TodoTimerData>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoTimerRequestImplCopyWith<$Res>
    implements $TodoTimerRequestCopyWith<$Res> {
  factory _$$TodoTimerRequestImplCopyWith(_$TodoTimerRequestImpl value,
          $Res Function(_$TodoTimerRequestImpl) then) =
      __$$TodoTimerRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx, List<TodoTimerData> timerData});
}

/// @nodoc
class __$$TodoTimerRequestImplCopyWithImpl<$Res>
    extends _$TodoTimerRequestCopyWithImpl<$Res, _$TodoTimerRequestImpl>
    implements _$$TodoTimerRequestImplCopyWith<$Res> {
  __$$TodoTimerRequestImplCopyWithImpl(_$TodoTimerRequestImpl _value,
      $Res Function(_$TodoTimerRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoTimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? timerData = null,
  }) {
    return _then(_$TodoTimerRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      timerData: null == timerData
          ? _value._timerData
          : timerData // ignore: cast_nullable_to_non_nullable
              as List<TodoTimerData>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoTimerRequestImpl implements _TodoTimerRequest {
  _$TodoTimerRequestImpl(
      {required this.idx, required final List<TodoTimerData> timerData})
      : _timerData = timerData;

  factory _$TodoTimerRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoTimerRequestImplFromJson(json);

  @override
  final int idx;
  final List<TodoTimerData> _timerData;
  @override
  List<TodoTimerData> get timerData {
    if (_timerData is EqualUnmodifiableListView) return _timerData;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_timerData);
  }

  @override
  String toString() {
    return 'TodoTimerRequest(idx: $idx, timerData: $timerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoTimerRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            const DeepCollectionEquality()
                .equals(other._timerData, _timerData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idx, const DeepCollectionEquality().hash(_timerData));

  /// Create a copy of TodoTimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoTimerRequestImplCopyWith<_$TodoTimerRequestImpl> get copyWith =>
      __$$TodoTimerRequestImplCopyWithImpl<_$TodoTimerRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoTimerRequestImplToJson(
      this,
    );
  }
}

abstract class _TodoTimerRequest implements TodoTimerRequest {
  factory _TodoTimerRequest(
      {required final int idx,
      required final List<TodoTimerData> timerData}) = _$TodoTimerRequestImpl;

  factory _TodoTimerRequest.fromJson(Map<String, dynamic> json) =
      _$TodoTimerRequestImpl.fromJson;

  @override
  int get idx;
  @override
  List<TodoTimerData> get timerData;

  /// Create a copy of TodoTimerRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoTimerRequestImplCopyWith<_$TodoTimerRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
