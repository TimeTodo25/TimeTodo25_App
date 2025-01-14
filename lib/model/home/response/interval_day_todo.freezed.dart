// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_day_todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntervalDayTodo _$IntervalDayTodoFromJson(Map<String, dynamic> json) {
  return _IntervalDayTodo.fromJson(json);
}

/// @nodoc
mixin _$IntervalDayTodo {
  int get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get startTargetDt => throw _privateConstructorUsedError;
  int get intervalDay => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;

  /// Serializes this IntervalDayTodo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntervalDayTodo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntervalDayTodoCopyWith<IntervalDayTodo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalDayTodoCopyWith<$Res> {
  factory $IntervalDayTodoCopyWith(
          IntervalDayTodo value, $Res Function(IntervalDayTodo) then) =
      _$IntervalDayTodoCopyWithImpl<$Res, IntervalDayTodo>;
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime startTargetDt,
      int intervalDay,
      DateTime createDt,
      DateTime? updateDt});
}

/// @nodoc
class _$IntervalDayTodoCopyWithImpl<$Res, $Val extends IntervalDayTodo>
    implements $IntervalDayTodoCopyWith<$Res> {
  _$IntervalDayTodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntervalDayTodo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? startTargetDt = null,
    Object? intervalDay = null,
    Object? createDt = null,
    Object? updateDt = freezed,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startTargetDt: null == startTargetDt
          ? _value.startTargetDt
          : startTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      intervalDay: null == intervalDay
          ? _value.intervalDay
          : intervalDay // ignore: cast_nullable_to_non_nullable
              as int,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IntervalDayTodoImplCopyWith<$Res>
    implements $IntervalDayTodoCopyWith<$Res> {
  factory _$$IntervalDayTodoImplCopyWith(_$IntervalDayTodoImpl value,
          $Res Function(_$IntervalDayTodoImpl) then) =
      __$$IntervalDayTodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime startTargetDt,
      int intervalDay,
      DateTime createDt,
      DateTime? updateDt});
}

/// @nodoc
class __$$IntervalDayTodoImplCopyWithImpl<$Res>
    extends _$IntervalDayTodoCopyWithImpl<$Res, _$IntervalDayTodoImpl>
    implements _$$IntervalDayTodoImplCopyWith<$Res> {
  __$$IntervalDayTodoImplCopyWithImpl(
      _$IntervalDayTodoImpl _value, $Res Function(_$IntervalDayTodoImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntervalDayTodo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? startTargetDt = null,
    Object? intervalDay = null,
    Object? createDt = null,
    Object? updateDt = freezed,
  }) {
    return _then(_$IntervalDayTodoImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startTargetDt: null == startTargetDt
          ? _value.startTargetDt
          : startTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      intervalDay: null == intervalDay
          ? _value.intervalDay
          : intervalDay // ignore: cast_nullable_to_non_nullable
              as int,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IntervalDayTodoImpl implements _IntervalDayTodo {
  _$IntervalDayTodoImpl(
      {required this.idx,
      required this.content,
      required this.startTargetDt,
      required this.intervalDay,
      required this.createDt,
      this.updateDt});

  factory _$IntervalDayTodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntervalDayTodoImplFromJson(json);

  @override
  final int idx;
  @override
  final String content;
  @override
  final DateTime startTargetDt;
  @override
  final int intervalDay;
  @override
  final DateTime createDt;
  @override
  final DateTime? updateDt;

  @override
  String toString() {
    return 'IntervalDayTodo(idx: $idx, content: $content, startTargetDt: $startTargetDt, intervalDay: $intervalDay, createDt: $createDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntervalDayTodoImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.startTargetDt, startTargetDt) ||
                other.startTargetDt == startTargetDt) &&
            (identical(other.intervalDay, intervalDay) ||
                other.intervalDay == intervalDay) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, content, startTargetDt,
      intervalDay, createDt, updateDt);

  /// Create a copy of IntervalDayTodo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntervalDayTodoImplCopyWith<_$IntervalDayTodoImpl> get copyWith =>
      __$$IntervalDayTodoImplCopyWithImpl<_$IntervalDayTodoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntervalDayTodoImplToJson(
      this,
    );
  }
}

abstract class _IntervalDayTodo implements IntervalDayTodo {
  factory _IntervalDayTodo(
      {required final int idx,
      required final String content,
      required final DateTime startTargetDt,
      required final int intervalDay,
      required final DateTime createDt,
      final DateTime? updateDt}) = _$IntervalDayTodoImpl;

  factory _IntervalDayTodo.fromJson(Map<String, dynamic> json) =
      _$IntervalDayTodoImpl.fromJson;

  @override
  int get idx;
  @override
  String get content;
  @override
  DateTime get startTargetDt;
  @override
  int get intervalDay;
  @override
  DateTime get createDt;
  @override
  DateTime? get updateDt;

  /// Create a copy of IntervalDayTodo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntervalDayTodoImplCopyWith<_$IntervalDayTodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
