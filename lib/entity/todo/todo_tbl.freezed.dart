// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_tbl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  int get idx => throw _privateConstructorUsedError;
  int get categoryIdx => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  DateTime? get startStopWtDt => throw _privateConstructorUsedError;
  DateTime? get endStopWtDt => throw _privateConstructorUsedError;
  DateTime? get startTargetDt => throw _privateConstructorUsedError;
  DateTime? get endTargetDt => throw _privateConstructorUsedError;
  DateTime? get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  DateTime? get deleteDt => throw _privateConstructorUsedError;

  /// Serializes this Todo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {int idx,
      int categoryIdx,
      String userName,
      String content,
      int status,
      DateTime? startStopWtDt,
      DateTime? endStopWtDt,
      DateTime? startTargetDt,
      DateTime? endTargetDt,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryIdx = null,
    Object? userName = null,
    Object? content = null,
    Object? status = null,
    Object? startStopWtDt = freezed,
    Object? endStopWtDt = freezed,
    Object? startTargetDt = freezed,
    Object? endTargetDt = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      startStopWtDt: freezed == startStopWtDt
          ? _value.startStopWtDt
          : startStopWtDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endStopWtDt: freezed == endStopWtDt
          ? _value.endStopWtDt
          : endStopWtDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTargetDt: freezed == startTargetDt
          ? _value.startTargetDt
          : startTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTargetDt: freezed == endTargetDt
          ? _value.endTargetDt
          : endTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDt: freezed == deleteDt
          ? _value.deleteDt
          : deleteDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
          _$TodoImpl value, $Res Function(_$TodoImpl) then) =
      __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      int categoryIdx,
      String userName,
      String content,
      int status,
      DateTime? startStopWtDt,
      DateTime? endStopWtDt,
      DateTime? startTargetDt,
      DateTime? endTargetDt,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt});
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryIdx = null,
    Object? userName = null,
    Object? content = null,
    Object? status = null,
    Object? startStopWtDt = freezed,
    Object? endStopWtDt = freezed,
    Object? startTargetDt = freezed,
    Object? endTargetDt = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
  }) {
    return _then(_$TodoImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      startStopWtDt: freezed == startStopWtDt
          ? _value.startStopWtDt
          : startStopWtDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endStopWtDt: freezed == endStopWtDt
          ? _value.endStopWtDt
          : endStopWtDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startTargetDt: freezed == startTargetDt
          ? _value.startTargetDt
          : startTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTargetDt: freezed == endTargetDt
          ? _value.endTargetDt
          : endTargetDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDt: freezed == deleteDt
          ? _value.deleteDt
          : deleteDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl implements _Todo {
  _$TodoImpl(
      {required this.idx,
      required this.categoryIdx,
      required this.userName,
      required this.content,
      this.status = 0,
      this.startStopWtDt,
      this.endStopWtDt,
      this.startTargetDt,
      this.endTargetDt,
      this.createDt,
      this.updateDt,
      this.deleteDt});

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  final int idx;
  @override
  final int categoryIdx;
  @override
  final String userName;
  @override
  final String content;
  @override
  @JsonKey()
  final int status;
  @override
  final DateTime? startStopWtDt;
  @override
  final DateTime? endStopWtDt;
  @override
  final DateTime? startTargetDt;
  @override
  final DateTime? endTargetDt;
  @override
  final DateTime? createDt;
  @override
  final DateTime? updateDt;
  @override
  final DateTime? deleteDt;

  @override
  String toString() {
    return 'Todo(idx: $idx, categoryIdx: $categoryIdx, userName: $userName, content: $content, status: $status, startStopWtDt: $startStopWtDt, endStopWtDt: $endStopWtDt, startTargetDt: $startTargetDt, endTargetDt: $endTargetDt, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.categoryIdx, categoryIdx) ||
                other.categoryIdx == categoryIdx) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.startStopWtDt, startStopWtDt) ||
                other.startStopWtDt == startStopWtDt) &&
            (identical(other.endStopWtDt, endStopWtDt) ||
                other.endStopWtDt == endStopWtDt) &&
            (identical(other.startTargetDt, startTargetDt) ||
                other.startTargetDt == startTargetDt) &&
            (identical(other.endTargetDt, endTargetDt) ||
                other.endTargetDt == endTargetDt) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            (identical(other.deleteDt, deleteDt) ||
                other.deleteDt == deleteDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      categoryIdx,
      userName,
      content,
      status,
      startStopWtDt,
      endStopWtDt,
      startTargetDt,
      endTargetDt,
      createDt,
      updateDt,
      deleteDt);

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(
      this,
    );
  }
}

abstract class _Todo implements Todo {
  factory _Todo(
      {required final int idx,
      required final int categoryIdx,
      required final String userName,
      required final String content,
      final int status,
      final DateTime? startStopWtDt,
      final DateTime? endStopWtDt,
      final DateTime? startTargetDt,
      final DateTime? endTargetDt,
      final DateTime? createDt,
      final DateTime? updateDt,
      final DateTime? deleteDt}) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  int get idx;
  @override
  int get categoryIdx;
  @override
  String get userName;
  @override
  String get content;
  @override
  int get status;
  @override
  DateTime? get startStopWtDt;
  @override
  DateTime? get endStopWtDt;
  @override
  DateTime? get startTargetDt;
  @override
  DateTime? get endTargetDt;
  @override
  DateTime? get createDt;
  @override
  DateTime? get updateDt;
  @override
  DateTime? get deleteDt;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
