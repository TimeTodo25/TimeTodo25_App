// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoItem _$TodoItemFromJson(Map<String, dynamic> json) {
  return _TodoItem.fromJson(json);
}

/// @nodoc
mixin _$TodoItem {
  int get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get targetDate => throw _privateConstructorUsedError;
  TimeInfo get startTargetTm => throw _privateConstructorUsedError;
  TimeInfo get endTargetTm => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  bool get routineYn => throw _privateConstructorUsedError;
  String? get cycleType => throw _privateConstructorUsedError;
  String? get cycleValue => throw _privateConstructorUsedError;
  String? get rm => throw _privateConstructorUsedError;
  DateTime? get routineStartDt => throw _privateConstructorUsedError;
  DateTime? get routineEndDt => throw _privateConstructorUsedError;
  TimeInfo get todoTotalTm => throw _privateConstructorUsedError;

  /// Serializes this TodoItem to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoItemCopyWith<TodoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoItemCopyWith<$Res> {
  factory $TodoItemCopyWith(TodoItem value, $Res Function(TodoItem) then) =
      _$TodoItemCopyWithImpl<$Res, TodoItem>;
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime targetDate,
      TimeInfo startTargetTm,
      TimeInfo endTargetTm,
      DateTime createDt,
      bool routineYn,
      String? cycleType,
      String? cycleValue,
      String? rm,
      DateTime? routineStartDt,
      DateTime? routineEndDt,
      TimeInfo todoTotalTm});

  $TimeInfoCopyWith<$Res> get startTargetTm;
  $TimeInfoCopyWith<$Res> get endTargetTm;
  $TimeInfoCopyWith<$Res> get todoTotalTm;
}

/// @nodoc
class _$TodoItemCopyWithImpl<$Res, $Val extends TodoItem>
    implements $TodoItemCopyWith<$Res> {
  _$TodoItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? targetDate = null,
    Object? startTargetTm = null,
    Object? endTargetTm = null,
    Object? createDt = null,
    Object? routineYn = null,
    Object? cycleType = freezed,
    Object? cycleValue = freezed,
    Object? rm = freezed,
    Object? routineStartDt = freezed,
    Object? routineEndDt = freezed,
    Object? todoTotalTm = null,
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
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTargetTm: null == startTargetTm
          ? _value.startTargetTm
          : startTargetTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
      endTargetTm: null == endTargetTm
          ? _value.endTargetTm
          : endTargetTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      routineYn: null == routineYn
          ? _value.routineYn
          : routineYn // ignore: cast_nullable_to_non_nullable
              as bool,
      cycleType: freezed == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String?,
      cycleValue: freezed == cycleValue
          ? _value.cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      rm: freezed == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
              as String?,
      routineStartDt: freezed == routineStartDt
          ? _value.routineStartDt
          : routineStartDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      routineEndDt: freezed == routineEndDt
          ? _value.routineEndDt
          : routineEndDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todoTotalTm: null == todoTotalTm
          ? _value.todoTotalTm
          : todoTotalTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
    ) as $Val);
  }

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeInfoCopyWith<$Res> get startTargetTm {
    return $TimeInfoCopyWith<$Res>(_value.startTargetTm, (value) {
      return _then(_value.copyWith(startTargetTm: value) as $Val);
    });
  }

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeInfoCopyWith<$Res> get endTargetTm {
    return $TimeInfoCopyWith<$Res>(_value.endTargetTm, (value) {
      return _then(_value.copyWith(endTargetTm: value) as $Val);
    });
  }

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimeInfoCopyWith<$Res> get todoTotalTm {
    return $TimeInfoCopyWith<$Res>(_value.todoTotalTm, (value) {
      return _then(_value.copyWith(todoTotalTm: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TodoItemImplCopyWith<$Res>
    implements $TodoItemCopyWith<$Res> {
  factory _$$TodoItemImplCopyWith(
          _$TodoItemImpl value, $Res Function(_$TodoItemImpl) then) =
      __$$TodoItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime targetDate,
      TimeInfo startTargetTm,
      TimeInfo endTargetTm,
      DateTime createDt,
      bool routineYn,
      String? cycleType,
      String? cycleValue,
      String? rm,
      DateTime? routineStartDt,
      DateTime? routineEndDt,
      TimeInfo todoTotalTm});

  @override
  $TimeInfoCopyWith<$Res> get startTargetTm;
  @override
  $TimeInfoCopyWith<$Res> get endTargetTm;
  @override
  $TimeInfoCopyWith<$Res> get todoTotalTm;
}

/// @nodoc
class __$$TodoItemImplCopyWithImpl<$Res>
    extends _$TodoItemCopyWithImpl<$Res, _$TodoItemImpl>
    implements _$$TodoItemImplCopyWith<$Res> {
  __$$TodoItemImplCopyWithImpl(
      _$TodoItemImpl _value, $Res Function(_$TodoItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? targetDate = null,
    Object? startTargetTm = null,
    Object? endTargetTm = null,
    Object? createDt = null,
    Object? routineYn = null,
    Object? cycleType = freezed,
    Object? cycleValue = freezed,
    Object? rm = freezed,
    Object? routineStartDt = freezed,
    Object? routineEndDt = freezed,
    Object? todoTotalTm = null,
  }) {
    return _then(_$TodoItemImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTargetTm: null == startTargetTm
          ? _value.startTargetTm
          : startTargetTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
      endTargetTm: null == endTargetTm
          ? _value.endTargetTm
          : endTargetTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      routineYn: null == routineYn
          ? _value.routineYn
          : routineYn // ignore: cast_nullable_to_non_nullable
              as bool,
      cycleType: freezed == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String?,
      cycleValue: freezed == cycleValue
          ? _value.cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as String?,
      rm: freezed == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
              as String?,
      routineStartDt: freezed == routineStartDt
          ? _value.routineStartDt
          : routineStartDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      routineEndDt: freezed == routineEndDt
          ? _value.routineEndDt
          : routineEndDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todoTotalTm: null == todoTotalTm
          ? _value.todoTotalTm
          : todoTotalTm // ignore: cast_nullable_to_non_nullable
              as TimeInfo,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoItemImpl implements _TodoItem {
  _$TodoItemImpl(
      {required this.idx,
      required this.content,
      required this.targetDate,
      required this.startTargetTm,
      required this.endTargetTm,
      required this.createDt,
      required this.routineYn,
      this.cycleType,
      this.cycleValue,
      this.rm,
      this.routineStartDt,
      this.routineEndDt,
      required this.todoTotalTm});

  factory _$TodoItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoItemImplFromJson(json);

  @override
  final int idx;
  @override
  final String content;
  @override
  final DateTime targetDate;
  @override
  final TimeInfo startTargetTm;
  @override
  final TimeInfo endTargetTm;
  @override
  final DateTime createDt;
  @override
  final bool routineYn;
  @override
  final String? cycleType;
  @override
  final String? cycleValue;
  @override
  final String? rm;
  @override
  final DateTime? routineStartDt;
  @override
  final DateTime? routineEndDt;
  @override
  final TimeInfo todoTotalTm;

  @override
  String toString() {
    return 'TodoItem(idx: $idx, content: $content, targetDate: $targetDate, startTargetTm: $startTargetTm, endTargetTm: $endTargetTm, createDt: $createDt, routineYn: $routineYn, cycleType: $cycleType, cycleValue: $cycleValue, rm: $rm, routineStartDt: $routineStartDt, routineEndDt: $routineEndDt, todoTotalTm: $todoTotalTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoItemImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.startTargetTm, startTargetTm) ||
                other.startTargetTm == startTargetTm) &&
            (identical(other.endTargetTm, endTargetTm) ||
                other.endTargetTm == endTargetTm) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.routineYn, routineYn) ||
                other.routineYn == routineYn) &&
            (identical(other.cycleType, cycleType) ||
                other.cycleType == cycleType) &&
            (identical(other.cycleValue, cycleValue) ||
                other.cycleValue == cycleValue) &&
            (identical(other.rm, rm) || other.rm == rm) &&
            (identical(other.routineStartDt, routineStartDt) ||
                other.routineStartDt == routineStartDt) &&
            (identical(other.routineEndDt, routineEndDt) ||
                other.routineEndDt == routineEndDt) &&
            (identical(other.todoTotalTm, todoTotalTm) ||
                other.todoTotalTm == todoTotalTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      content,
      targetDate,
      startTargetTm,
      endTargetTm,
      createDt,
      routineYn,
      cycleType,
      cycleValue,
      rm,
      routineStartDt,
      routineEndDt,
      todoTotalTm);

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      __$$TodoItemImplCopyWithImpl<_$TodoItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoItemImplToJson(
      this,
    );
  }
}

abstract class _TodoItem implements TodoItem {
  factory _TodoItem(
      {required final int idx,
      required final String content,
      required final DateTime targetDate,
      required final TimeInfo startTargetTm,
      required final TimeInfo endTargetTm,
      required final DateTime createDt,
      required final bool routineYn,
      final String? cycleType,
      final String? cycleValue,
      final String? rm,
      final DateTime? routineStartDt,
      final DateTime? routineEndDt,
      required final TimeInfo todoTotalTm}) = _$TodoItemImpl;

  factory _TodoItem.fromJson(Map<String, dynamic> json) =
      _$TodoItemImpl.fromJson;

  @override
  int get idx;
  @override
  String get content;
  @override
  DateTime get targetDate;
  @override
  TimeInfo get startTargetTm;
  @override
  TimeInfo get endTargetTm;
  @override
  DateTime get createDt;
  @override
  bool get routineYn;
  @override
  String? get cycleType;
  @override
  String? get cycleValue;
  @override
  String? get rm;
  @override
  DateTime? get routineStartDt;
  @override
  DateTime? get routineEndDt;
  @override
  TimeInfo get todoTotalTm;

  /// Create a copy of TodoItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoItemImplCopyWith<_$TodoItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
