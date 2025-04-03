// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'today_goal_tbl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodayGoal _$TodayGoalFromJson(Map<String, dynamic> json) {
  return _TodayGoal.fromJson(json);
}

/// @nodoc
mixin _$TodayGoal {
  int? get idx => throw _privateConstructorUsedError;
  DateTime get goalDate => throw _privateConstructorUsedError;
  String get goalText => throw _privateConstructorUsedError;
  String get todayIcon => throw _privateConstructorUsedError;
  DateTime? get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  DateTime? get deleteDt => throw _privateConstructorUsedError;
  int? get syncIdx => throw _privateConstructorUsedError; // 서버 pk
  DateTime? get syncDt => throw _privateConstructorUsedError; // 서버 동기화 시간
  String get syncStatus => throw _privateConstructorUsedError;

  /// Serializes this TodayGoal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodayGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodayGoalCopyWith<TodayGoal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodayGoalCopyWith<$Res> {
  factory $TodayGoalCopyWith(TodayGoal value, $Res Function(TodayGoal) then) =
      _$TodayGoalCopyWithImpl<$Res, TodayGoal>;
  @useResult
  $Res call(
      {int? idx,
      DateTime goalDate,
      String goalText,
      String todayIcon,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      int? syncIdx,
      DateTime? syncDt,
      String syncStatus});
}

/// @nodoc
class _$TodayGoalCopyWithImpl<$Res, $Val extends TodayGoal>
    implements $TodayGoalCopyWith<$Res> {
  _$TodayGoalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodayGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? goalDate = null,
    Object? goalText = null,
    Object? todayIcon = null,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? syncIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      goalDate: null == goalDate
          ? _value.goalDate
          : goalDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalText: null == goalText
          ? _value.goalText
          : goalText // ignore: cast_nullable_to_non_nullable
              as String,
      todayIcon: null == todayIcon
          ? _value.todayIcon
          : todayIcon // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$TodayGoalImplCopyWith<$Res>
    implements $TodayGoalCopyWith<$Res> {
  factory _$$TodayGoalImplCopyWith(
          _$TodayGoalImpl value, $Res Function(_$TodayGoalImpl) then) =
      __$$TodayGoalImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idx,
      DateTime goalDate,
      String goalText,
      String todayIcon,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      int? syncIdx,
      DateTime? syncDt,
      String syncStatus});
}

/// @nodoc
class __$$TodayGoalImplCopyWithImpl<$Res>
    extends _$TodayGoalCopyWithImpl<$Res, _$TodayGoalImpl>
    implements _$$TodayGoalImplCopyWith<$Res> {
  __$$TodayGoalImplCopyWithImpl(
      _$TodayGoalImpl _value, $Res Function(_$TodayGoalImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodayGoal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? goalDate = null,
    Object? goalText = null,
    Object? todayIcon = null,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? syncIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
  }) {
    return _then(_$TodayGoalImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      goalDate: null == goalDate
          ? _value.goalDate
          : goalDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      goalText: null == goalText
          ? _value.goalText
          : goalText // ignore: cast_nullable_to_non_nullable
              as String,
      todayIcon: null == todayIcon
          ? _value.todayIcon
          : todayIcon // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$TodayGoalImpl implements _TodayGoal {
  _$TodayGoalImpl(
      {this.idx,
      required this.goalDate,
      required this.goalText,
      required this.todayIcon,
      this.createDt,
      this.updateDt,
      this.deleteDt,
      this.syncIdx,
      this.syncDt,
      this.syncStatus = "P"});

  factory _$TodayGoalImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodayGoalImplFromJson(json);

  @override
  final int? idx;
  @override
  final DateTime goalDate;
  @override
  final String goalText;
  @override
  final String todayIcon;
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
  final DateTime? syncDt;
// 서버 동기화 시간
  @override
  @JsonKey()
  final String syncStatus;

  @override
  String toString() {
    return 'TodayGoal(idx: $idx, goalDate: $goalDate, goalText: $goalText, todayIcon: $todayIcon, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt, syncIdx: $syncIdx, syncDt: $syncDt, syncStatus: $syncStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodayGoalImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.goalDate, goalDate) ||
                other.goalDate == goalDate) &&
            (identical(other.goalText, goalText) ||
                other.goalText == goalText) &&
            (identical(other.todayIcon, todayIcon) ||
                other.todayIcon == todayIcon) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            (identical(other.deleteDt, deleteDt) ||
                other.deleteDt == deleteDt) &&
            (identical(other.syncIdx, syncIdx) || other.syncIdx == syncIdx) &&
            (identical(other.syncDt, syncDt) || other.syncDt == syncDt) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, goalDate, goalText,
      todayIcon, createDt, updateDt, deleteDt, syncIdx, syncDt, syncStatus);

  /// Create a copy of TodayGoal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodayGoalImplCopyWith<_$TodayGoalImpl> get copyWith =>
      __$$TodayGoalImplCopyWithImpl<_$TodayGoalImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodayGoalImplToJson(
      this,
    );
  }
}

abstract class _TodayGoal implements TodayGoal {
  factory _TodayGoal(
      {final int? idx,
      required final DateTime goalDate,
      required final String goalText,
      required final String todayIcon,
      final DateTime? createDt,
      final DateTime? updateDt,
      final DateTime? deleteDt,
      final int? syncIdx,
      final DateTime? syncDt,
      final String syncStatus}) = _$TodayGoalImpl;

  factory _TodayGoal.fromJson(Map<String, dynamic> json) =
      _$TodayGoalImpl.fromJson;

  @override
  int? get idx;
  @override
  DateTime get goalDate;
  @override
  String get goalText;
  @override
  String get todayIcon;
  @override
  DateTime? get createDt;
  @override
  DateTime? get updateDt;
  @override
  DateTime? get deleteDt;
  @override
  int? get syncIdx; // 서버 pk
  @override
  DateTime? get syncDt; // 서버 동기화 시간
  @override
  String get syncStatus;

  /// Create a copy of TodayGoal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodayGoalImplCopyWith<_$TodayGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
