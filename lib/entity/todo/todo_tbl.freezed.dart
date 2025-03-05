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
  int? get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get categoryIdx => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get todoDate => throw _privateConstructorUsedError;
  int get progressStatus =>
      throw _privateConstructorUsedError; // 투두 달성률 (0, 50, 100)
  DateTime? get startStopWtDt => throw _privateConstructorUsedError;
  DateTime? get endStopWtDt => throw _privateConstructorUsedError;
  DateTime? get startTargetDt => throw _privateConstructorUsedError;
  DateTime? get endTargetDt => throw _privateConstructorUsedError;
  DateTime? get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  DateTime? get deleteDt => throw _privateConstructorUsedError;
  int? get syncIdx => throw _privateConstructorUsedError; // 서버 pk
  int? get syncCategoryIdx => throw _privateConstructorUsedError; // 서버 fk
  DateTime? get syncDt => throw _privateConstructorUsedError; // 서버 동기화 시간
  String get syncStatus => throw _privateConstructorUsedError;

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
      {int? idx,
      String content,
      String userName,
      int categoryIdx,
      String status,
      DateTime todoDate,
      int progressStatus,
      DateTime? startStopWtDt,
      DateTime? endStopWtDt,
      DateTime? startTargetDt,
      DateTime? endTargetDt,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
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
    Object? idx = freezed,
    Object? content = null,
    Object? userName = null,
    Object? categoryIdx = null,
    Object? status = null,
    Object? todoDate = null,
    Object? progressStatus = null,
    Object? startStopWtDt = freezed,
    Object? endStopWtDt = freezed,
    Object? startTargetDt = freezed,
    Object? endTargetDt = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? syncIdx = freezed,
    Object? syncCategoryIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      todoDate: null == todoDate
          ? _value.todoDate
          : todoDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
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
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncCategoryIdx: freezed == syncCategoryIdx
          ? _value.syncCategoryIdx
          : syncCategoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      {int? idx,
      String content,
      String userName,
      int categoryIdx,
      String status,
      DateTime todoDate,
      int progressStatus,
      DateTime? startStopWtDt,
      DateTime? endStopWtDt,
      DateTime? startTargetDt,
      DateTime? endTargetDt,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
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
    Object? idx = freezed,
    Object? content = null,
    Object? userName = null,
    Object? categoryIdx = null,
    Object? status = null,
    Object? todoDate = null,
    Object? progressStatus = null,
    Object? startStopWtDt = freezed,
    Object? endStopWtDt = freezed,
    Object? startTargetDt = freezed,
    Object? endTargetDt = freezed,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? syncIdx = freezed,
    Object? syncCategoryIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
  }) {
    return _then(_$TodoImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      todoDate: null == todoDate
          ? _value.todoDate
          : todoDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
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
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncCategoryIdx: freezed == syncCategoryIdx
          ? _value.syncCategoryIdx
          : syncCategoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl implements _Todo {
  _$TodoImpl(
      {this.idx,
      required this.content,
      required this.userName,
      required this.categoryIdx,
      this.status = "Y",
      required this.todoDate,
      this.progressStatus = 0,
      this.startStopWtDt,
      this.endStopWtDt,
      this.startTargetDt,
      this.endTargetDt,
      this.createDt,
      this.updateDt,
      this.deleteDt,
      this.syncIdx,
      this.syncCategoryIdx,
      this.syncDt,
      this.syncStatus = "P"});

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  final int? idx;
  @override
  final String content;
  @override
  final String userName;
  @override
  final int categoryIdx;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime todoDate;
  @override
  @JsonKey()
  final int progressStatus;
// 투두 달성률 (0, 50, 100)
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
  final int? syncIdx;
// 서버 pk
  @override
  final int? syncCategoryIdx;
// 서버 fk
  @override
  final DateTime? syncDt;
// 서버 동기화 시간
  @override
  @JsonKey()
  final String syncStatus;

  @override
  String toString() {
    return 'Todo(idx: $idx, content: $content, userName: $userName, categoryIdx: $categoryIdx, status: $status, todoDate: $todoDate, progressStatus: $progressStatus, startStopWtDt: $startStopWtDt, endStopWtDt: $endStopWtDt, startTargetDt: $startTargetDt, endTargetDt: $endTargetDt, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt, syncIdx: $syncIdx, syncCategoryIdx: $syncCategoryIdx, syncDt: $syncDt, syncStatus: $syncStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.categoryIdx, categoryIdx) ||
                other.categoryIdx == categoryIdx) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.todoDate, todoDate) ||
                other.todoDate == todoDate) &&
            (identical(other.progressStatus, progressStatus) ||
                other.progressStatus == progressStatus) &&
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
                other.deleteDt == deleteDt) &&
            (identical(other.syncIdx, syncIdx) || other.syncIdx == syncIdx) &&
            (identical(other.syncCategoryIdx, syncCategoryIdx) ||
                other.syncCategoryIdx == syncCategoryIdx) &&
            (identical(other.syncDt, syncDt) || other.syncDt == syncDt) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      content,
      userName,
      categoryIdx,
      status,
      todoDate,
      progressStatus,
      startStopWtDt,
      endStopWtDt,
      startTargetDt,
      endTargetDt,
      createDt,
      updateDt,
      deleteDt,
      syncIdx,
      syncCategoryIdx,
      syncDt,
      syncStatus);

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
      {final int? idx,
      required final String content,
      required final String userName,
      required final int categoryIdx,
      final String status,
      required final DateTime todoDate,
      final int progressStatus,
      final DateTime? startStopWtDt,
      final DateTime? endStopWtDt,
      final DateTime? startTargetDt,
      final DateTime? endTargetDt,
      final DateTime? createDt,
      final DateTime? updateDt,
      final DateTime? deleteDt,
      final int? syncIdx,
      final int? syncCategoryIdx,
      final DateTime? syncDt,
      final String syncStatus}) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  int? get idx;
  @override
  String get content;
  @override
  String get userName;
  @override
  int get categoryIdx;
  @override
  String get status;
  @override
  DateTime get todoDate;
  @override
  int get progressStatus; // 투두 달성률 (0, 50, 100)
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
  @override
  int? get syncIdx; // 서버 pk
  @override
  int? get syncCategoryIdx; // 서버 fk
  @override
  DateTime? get syncDt; // 서버 동기화 시간
  @override
  String get syncStatus;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
