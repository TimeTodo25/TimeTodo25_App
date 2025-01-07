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
  String get content => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_idx')
  int get categoryIdx => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_stop_wt_dt')
  DateTime? get startStopWtDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_stop_wt_dt')
  DateTime? get endStopWtDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_target_dt')
  DateTime? get startTargetDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_target_dt')
  DateTime? get endTargetDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_dt')
  DateTime? get createDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_dt')
  DateTime? get updateDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_dt')
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
      String content,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'category_idx') int categoryIdx,
      int status,
      @JsonKey(name: 'start_stop_wt_dt') DateTime? startStopWtDt,
      @JsonKey(name: 'end_stop_wt_dt') DateTime? endStopWtDt,
      @JsonKey(name: 'start_target_dt') DateTime? startTargetDt,
      @JsonKey(name: 'end_target_dt') DateTime? endTargetDt,
      @JsonKey(name: 'create_dt') DateTime? createDt,
      @JsonKey(name: 'update_dt') DateTime? updateDt,
      @JsonKey(name: 'delete_dt') DateTime? deleteDt});
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
    Object? content = null,
    Object? userName = null,
    Object? categoryIdx = null,
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
      String content,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'category_idx') int categoryIdx,
      int status,
      @JsonKey(name: 'start_stop_wt_dt') DateTime? startStopWtDt,
      @JsonKey(name: 'end_stop_wt_dt') DateTime? endStopWtDt,
      @JsonKey(name: 'start_target_dt') DateTime? startTargetDt,
      @JsonKey(name: 'end_target_dt') DateTime? endTargetDt,
      @JsonKey(name: 'create_dt') DateTime? createDt,
      @JsonKey(name: 'update_dt') DateTime? updateDt,
      @JsonKey(name: 'delete_dt') DateTime? deleteDt});
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
    Object? content = null,
    Object? userName = null,
    Object? categoryIdx = null,
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
      required this.content,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'category_idx') required this.categoryIdx,
      this.status = 1,
      @JsonKey(name: 'start_stop_wt_dt') this.startStopWtDt,
      @JsonKey(name: 'end_stop_wt_dt') this.endStopWtDt,
      @JsonKey(name: 'start_target_dt') this.startTargetDt,
      @JsonKey(name: 'end_target_dt') this.endTargetDt,
      @JsonKey(name: 'create_dt') this.createDt,
      @JsonKey(name: 'update_dt') this.updateDt,
      @JsonKey(name: 'delete_dt') this.deleteDt});

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  final int idx;
  @override
  final String content;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'category_idx')
  final int categoryIdx;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'start_stop_wt_dt')
  final DateTime? startStopWtDt;
  @override
  @JsonKey(name: 'end_stop_wt_dt')
  final DateTime? endStopWtDt;
  @override
  @JsonKey(name: 'start_target_dt')
  final DateTime? startTargetDt;
  @override
  @JsonKey(name: 'end_target_dt')
  final DateTime? endTargetDt;
  @override
  @JsonKey(name: 'create_dt')
  final DateTime? createDt;
  @override
  @JsonKey(name: 'update_dt')
  final DateTime? updateDt;
  @override
  @JsonKey(name: 'delete_dt')
  final DateTime? deleteDt;

  @override
  String toString() {
    return 'Todo(idx: $idx, content: $content, userName: $userName, categoryIdx: $categoryIdx, status: $status, startStopWtDt: $startStopWtDt, endStopWtDt: $endStopWtDt, startTargetDt: $startTargetDt, endTargetDt: $endTargetDt, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt)';
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
      content,
      userName,
      categoryIdx,
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
      required final String content,
      @JsonKey(name: 'user_name') required final String userName,
      @JsonKey(name: 'category_idx') required final int categoryIdx,
      final int status,
      @JsonKey(name: 'start_stop_wt_dt') final DateTime? startStopWtDt,
      @JsonKey(name: 'end_stop_wt_dt') final DateTime? endStopWtDt,
      @JsonKey(name: 'start_target_dt') final DateTime? startTargetDt,
      @JsonKey(name: 'end_target_dt') final DateTime? endTargetDt,
      @JsonKey(name: 'create_dt') final DateTime? createDt,
      @JsonKey(name: 'update_dt') final DateTime? updateDt,
      @JsonKey(name: 'delete_dt') final DateTime? deleteDt}) = _$TodoImpl;

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  int get idx;
  @override
  String get content;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'category_idx')
  int get categoryIdx;
  @override
  int get status;
  @override
  @JsonKey(name: 'start_stop_wt_dt')
  DateTime? get startStopWtDt;
  @override
  @JsonKey(name: 'end_stop_wt_dt')
  DateTime? get endStopWtDt;
  @override
  @JsonKey(name: 'start_target_dt')
  DateTime? get startTargetDt;
  @override
  @JsonKey(name: 'end_target_dt')
  DateTime? get endTargetDt;
  @override
  @JsonKey(name: 'create_dt')
  DateTime? get createDt;
  @override
  @JsonKey(name: 'update_dt')
  DateTime? get updateDt;
  @override
  @JsonKey(name: 'delete_dt')
  DateTime? get deleteDt;

  /// Create a copy of Todo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
