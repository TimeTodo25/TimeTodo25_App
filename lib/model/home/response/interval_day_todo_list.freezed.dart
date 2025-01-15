// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'interval_day_todo_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IntervalDayTodoList _$IntervalDayTodoListFromJson(Map<String, dynamic> json) {
  return _IntervalDayTodoList.fromJson(json);
}

/// @nodoc
mixin _$IntervalDayTodoList {
  int get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get startTargetDt => throw _privateConstructorUsedError;
  int get intervalDay => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;

  /// Serializes this IntervalDayTodoList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IntervalDayTodoList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IntervalDayTodoListCopyWith<IntervalDayTodoList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntervalDayTodoListCopyWith<$Res> {
  factory $IntervalDayTodoListCopyWith(
          IntervalDayTodoList value, $Res Function(IntervalDayTodoList) then) =
      _$IntervalDayTodoListCopyWithImpl<$Res, IntervalDayTodoList>;
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
class _$IntervalDayTodoListCopyWithImpl<$Res, $Val extends IntervalDayTodoList>
    implements $IntervalDayTodoListCopyWith<$Res> {
  _$IntervalDayTodoListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IntervalDayTodoList
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
abstract class _$$IntervalDayTodoListImplCopyWith<$Res>
    implements $IntervalDayTodoListCopyWith<$Res> {
  factory _$$IntervalDayTodoListImplCopyWith(_$IntervalDayTodoListImpl value,
          $Res Function(_$IntervalDayTodoListImpl) then) =
      __$$IntervalDayTodoListImplCopyWithImpl<$Res>;
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
class __$$IntervalDayTodoListImplCopyWithImpl<$Res>
    extends _$IntervalDayTodoListCopyWithImpl<$Res, _$IntervalDayTodoListImpl>
    implements _$$IntervalDayTodoListImplCopyWith<$Res> {
  __$$IntervalDayTodoListImplCopyWithImpl(_$IntervalDayTodoListImpl _value,
      $Res Function(_$IntervalDayTodoListImpl) _then)
      : super(_value, _then);

  /// Create a copy of IntervalDayTodoList
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
    return _then(_$IntervalDayTodoListImpl(
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
class _$IntervalDayTodoListImpl implements _IntervalDayTodoList {
  _$IntervalDayTodoListImpl(
      {required this.idx,
      required this.content,
      required this.startTargetDt,
      required this.intervalDay,
      required this.createDt,
      this.updateDt});

  factory _$IntervalDayTodoListImpl.fromJson(Map<String, dynamic> json) =>
      _$$IntervalDayTodoListImplFromJson(json);

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
    return 'IntervalDayTodoList(idx: $idx, content: $content, startTargetDt: $startTargetDt, intervalDay: $intervalDay, createDt: $createDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IntervalDayTodoListImpl &&
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

  /// Create a copy of IntervalDayTodoList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IntervalDayTodoListImplCopyWith<_$IntervalDayTodoListImpl> get copyWith =>
      __$$IntervalDayTodoListImplCopyWithImpl<_$IntervalDayTodoListImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IntervalDayTodoListImplToJson(
      this,
    );
  }
}

abstract class _IntervalDayTodoList implements IntervalDayTodoList {
  factory _IntervalDayTodoList(
      {required final int idx,
      required final String content,
      required final DateTime startTargetDt,
      required final int intervalDay,
      required final DateTime createDt,
      final DateTime? updateDt}) = _$IntervalDayTodoListImpl;

  factory _IntervalDayTodoList.fromJson(Map<String, dynamic> json) =
      _$IntervalDayTodoListImpl.fromJson;

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

  /// Create a copy of IntervalDayTodoList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IntervalDayTodoListImplCopyWith<_$IntervalDayTodoListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
