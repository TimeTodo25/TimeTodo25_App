// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'timer_tbl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TimerModel _$TimerModelFromJson(Map<String, dynamic> json) {
  return _TimerModel.fromJson(json);
}

/// @nodoc
mixin _$TimerModel {
  int? get idx => throw _privateConstructorUsedError; // Timer History index
  String get historyEndDt => throw _privateConstructorUsedError;
  String get historyStartDt => throw _privateConstructorUsedError;
  TimerLogType get historyType => throw _privateConstructorUsedError;
  String get totalTm => throw _privateConstructorUsedError;
  int get todoIdx => throw _privateConstructorUsedError;
  int? get syncIdx => throw _privateConstructorUsedError; // 서버 pk
  int? get syncCategoryIdx => throw _privateConstructorUsedError; // 서버 fk
  DateTime? get syncDt => throw _privateConstructorUsedError; // 서버 동기화 시간
  String get syncStatus => throw _privateConstructorUsedError;

  /// Serializes this TimerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimerModelCopyWith<TimerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimerModelCopyWith<$Res> {
  factory $TimerModelCopyWith(
          TimerModel value, $Res Function(TimerModel) then) =
      _$TimerModelCopyWithImpl<$Res, TimerModel>;
  @useResult
  $Res call(
      {int? idx,
      String historyEndDt,
      String historyStartDt,
      TimerLogType historyType,
      String totalTm,
      int todoIdx,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
}

/// @nodoc
class _$TimerModelCopyWithImpl<$Res, $Val extends TimerModel>
    implements $TimerModelCopyWith<$Res> {
  _$TimerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? historyEndDt = null,
    Object? historyStartDt = null,
    Object? historyType = null,
    Object? totalTm = null,
    Object? todoIdx = null,
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
      historyEndDt: null == historyEndDt
          ? _value.historyEndDt
          : historyEndDt // ignore: cast_nullable_to_non_nullable
              as String,
      historyStartDt: null == historyStartDt
          ? _value.historyStartDt
          : historyStartDt // ignore: cast_nullable_to_non_nullable
              as String,
      historyType: null == historyType
          ? _value.historyType
          : historyType // ignore: cast_nullable_to_non_nullable
              as TimerLogType,
      totalTm: null == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String,
      todoIdx: null == todoIdx
          ? _value.todoIdx
          : todoIdx // ignore: cast_nullable_to_non_nullable
              as int,
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
abstract class _$$TimerModelImplCopyWith<$Res>
    implements $TimerModelCopyWith<$Res> {
  factory _$$TimerModelImplCopyWith(
          _$TimerModelImpl value, $Res Function(_$TimerModelImpl) then) =
      __$$TimerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idx,
      String historyEndDt,
      String historyStartDt,
      TimerLogType historyType,
      String totalTm,
      int todoIdx,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
}

/// @nodoc
class __$$TimerModelImplCopyWithImpl<$Res>
    extends _$TimerModelCopyWithImpl<$Res, _$TimerModelImpl>
    implements _$$TimerModelImplCopyWith<$Res> {
  __$$TimerModelImplCopyWithImpl(
      _$TimerModelImpl _value, $Res Function(_$TimerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? historyEndDt = null,
    Object? historyStartDt = null,
    Object? historyType = null,
    Object? totalTm = null,
    Object? todoIdx = null,
    Object? syncIdx = freezed,
    Object? syncCategoryIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
  }) {
    return _then(_$TimerModelImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      historyEndDt: null == historyEndDt
          ? _value.historyEndDt
          : historyEndDt // ignore: cast_nullable_to_non_nullable
              as String,
      historyStartDt: null == historyStartDt
          ? _value.historyStartDt
          : historyStartDt // ignore: cast_nullable_to_non_nullable
              as String,
      historyType: null == historyType
          ? _value.historyType
          : historyType // ignore: cast_nullable_to_non_nullable
              as TimerLogType,
      totalTm: null == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String,
      todoIdx: null == todoIdx
          ? _value.todoIdx
          : todoIdx // ignore: cast_nullable_to_non_nullable
              as int,
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
class _$TimerModelImpl implements _TimerModel {
  _$TimerModelImpl(
      {this.idx,
      required this.historyEndDt,
      required this.historyStartDt,
      required this.historyType,
      required this.totalTm,
      required this.todoIdx,
      this.syncIdx,
      this.syncCategoryIdx,
      this.syncDt,
      this.syncStatus = "P"});

  factory _$TimerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimerModelImplFromJson(json);

  @override
  final int? idx;
// Timer History index
  @override
  final String historyEndDt;
  @override
  final String historyStartDt;
  @override
  final TimerLogType historyType;
  @override
  final String totalTm;
  @override
  final int todoIdx;
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
    return 'TimerModel(idx: $idx, historyEndDt: $historyEndDt, historyStartDt: $historyStartDt, historyType: $historyType, totalTm: $totalTm, todoIdx: $todoIdx, syncIdx: $syncIdx, syncCategoryIdx: $syncCategoryIdx, syncDt: $syncDt, syncStatus: $syncStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TimerModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.historyEndDt, historyEndDt) ||
                other.historyEndDt == historyEndDt) &&
            (identical(other.historyStartDt, historyStartDt) ||
                other.historyStartDt == historyStartDt) &&
            (identical(other.historyType, historyType) ||
                other.historyType == historyType) &&
            (identical(other.totalTm, totalTm) || other.totalTm == totalTm) &&
            (identical(other.todoIdx, todoIdx) || other.todoIdx == todoIdx) &&
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
      historyEndDt,
      historyStartDt,
      historyType,
      totalTm,
      todoIdx,
      syncIdx,
      syncCategoryIdx,
      syncDt,
      syncStatus);

  /// Create a copy of TimerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimerModelImplCopyWith<_$TimerModelImpl> get copyWith =>
      __$$TimerModelImplCopyWithImpl<_$TimerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimerModelImplToJson(
      this,
    );
  }
}

abstract class _TimerModel implements TimerModel {
  factory _TimerModel(
      {final int? idx,
      required final String historyEndDt,
      required final String historyStartDt,
      required final TimerLogType historyType,
      required final String totalTm,
      required final int todoIdx,
      final int? syncIdx,
      final int? syncCategoryIdx,
      final DateTime? syncDt,
      final String syncStatus}) = _$TimerModelImpl;

  factory _TimerModel.fromJson(Map<String, dynamic> json) =
      _$TimerModelImpl.fromJson;

  @override
  int? get idx; // Timer History index
  @override
  String get historyEndDt;
  @override
  String get historyStartDt;
  @override
  TimerLogType get historyType;
  @override
  String get totalTm;
  @override
  int get todoIdx;
  @override
  int? get syncIdx; // 서버 pk
  @override
  int? get syncCategoryIdx; // 서버 fk
  @override
  DateTime? get syncDt; // 서버 동기화 시간
  @override
  String get syncStatus;

  /// Create a copy of TimerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimerModelImplCopyWith<_$TimerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
