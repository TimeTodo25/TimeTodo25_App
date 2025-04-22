// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'routine_tbl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Routine _$RoutineFromJson(Map<String, dynamic> json) {
  return _Routine.fromJson(json);
}

/// @nodoc
mixin _$Routine {
  int? get idx => throw _privateConstructorUsedError;
  int? get syncIdx => throw _privateConstructorUsedError;
  int? get categoryIdx => throw _privateConstructorUsedError;
  int? get categorySyncIdx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get startDt => throw _privateConstructorUsedError;
  DateTime get endDt => throw _privateConstructorUsedError;
  String get cycleType => throw _privateConstructorUsedError;
  String get cycleValue => throw _privateConstructorUsedError;
  String get rm => throw _privateConstructorUsedError;
  DateTime? get createDt => throw _privateConstructorUsedError;
  DateTime get updateDt => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get syncStatus => throw _privateConstructorUsedError;
  DateTime? get syncDt => throw _privateConstructorUsedError;

  /// Serializes this Routine to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoutineCopyWith<Routine> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoutineCopyWith<$Res> {
  factory $RoutineCopyWith(Routine value, $Res Function(Routine) then) =
      _$RoutineCopyWithImpl<$Res, Routine>;
  @useResult
  $Res call(
      {int? idx,
      int? syncIdx,
      int? categoryIdx,
      int? categorySyncIdx,
      String content,
      DateTime startDt,
      DateTime endDt,
      String cycleType,
      String cycleValue,
      String rm,
      DateTime? createDt,
      DateTime updateDt,
      String status,
      String? syncStatus,
      DateTime? syncDt});
}

/// @nodoc
class _$RoutineCopyWithImpl<$Res, $Val extends Routine>
    implements $RoutineCopyWith<$Res> {
  _$RoutineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? syncIdx = freezed,
    Object? categoryIdx = freezed,
    Object? categorySyncIdx = freezed,
    Object? content = null,
    Object? startDt = null,
    Object? endDt = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? rm = null,
    Object? createDt = freezed,
    Object? updateDt = null,
    Object? status = null,
    Object? syncStatus = freezed,
    Object? syncDt = freezed,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryIdx: freezed == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      categorySyncIdx: freezed == categorySyncIdx
          ? _value.categorySyncIdx
          : categorySyncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDt: null == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cycleType: null == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String,
      cycleValue: null == cycleValue
          ? _value.cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as String,
      rm: null == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      syncStatus: freezed == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoutineImplCopyWith<$Res> implements $RoutineCopyWith<$Res> {
  factory _$$RoutineImplCopyWith(
          _$RoutineImpl value, $Res Function(_$RoutineImpl) then) =
      __$$RoutineImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idx,
      int? syncIdx,
      int? categoryIdx,
      int? categorySyncIdx,
      String content,
      DateTime startDt,
      DateTime endDt,
      String cycleType,
      String cycleValue,
      String rm,
      DateTime? createDt,
      DateTime updateDt,
      String status,
      String? syncStatus,
      DateTime? syncDt});
}

/// @nodoc
class __$$RoutineImplCopyWithImpl<$Res>
    extends _$RoutineCopyWithImpl<$Res, _$RoutineImpl>
    implements _$$RoutineImplCopyWith<$Res> {
  __$$RoutineImplCopyWithImpl(
      _$RoutineImpl _value, $Res Function(_$RoutineImpl) _then)
      : super(_value, _then);

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? syncIdx = freezed,
    Object? categoryIdx = freezed,
    Object? categorySyncIdx = freezed,
    Object? content = null,
    Object? startDt = null,
    Object? endDt = null,
    Object? cycleType = null,
    Object? cycleValue = null,
    Object? rm = null,
    Object? createDt = freezed,
    Object? updateDt = null,
    Object? status = null,
    Object? syncStatus = freezed,
    Object? syncDt = freezed,
  }) {
    return _then(_$RoutineImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryIdx: freezed == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      categorySyncIdx: freezed == categorySyncIdx
          ? _value.categorySyncIdx
          : categorySyncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      startDt: null == startDt
          ? _value.startDt
          : startDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endDt: null == endDt
          ? _value.endDt
          : endDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cycleType: null == cycleType
          ? _value.cycleType
          : cycleType // ignore: cast_nullable_to_non_nullable
              as String,
      cycleValue: null == cycleValue
          ? _value.cycleValue
          : cycleValue // ignore: cast_nullable_to_non_nullable
              as String,
      rm: null == rm
          ? _value.rm
          : rm // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      syncStatus: freezed == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoutineImpl implements _Routine {
  _$RoutineImpl(
      {this.idx,
      this.syncIdx,
      this.categoryIdx,
      this.categorySyncIdx,
      required this.content,
      required this.startDt,
      required this.endDt,
      required this.cycleType,
      required this.cycleValue,
      this.rm = '',
      this.createDt,
      required this.updateDt,
      this.status = 'Y',
      this.syncStatus = 'P',
      this.syncDt});

  factory _$RoutineImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoutineImplFromJson(json);

  @override
  final int? idx;
  @override
  final int? syncIdx;
  @override
  final int? categoryIdx;
  @override
  final int? categorySyncIdx;
  @override
  final String content;
  @override
  final DateTime startDt;
  @override
  final DateTime endDt;
  @override
  final String cycleType;
  @override
  final String cycleValue;
  @override
  @JsonKey()
  final String rm;
  @override
  final DateTime? createDt;
  @override
  final DateTime updateDt;
  @override
  @JsonKey()
  final String status;
  @override
  @JsonKey()
  final String? syncStatus;
  @override
  final DateTime? syncDt;

  @override
  String toString() {
    return 'Routine(idx: $idx, syncIdx: $syncIdx, categoryIdx: $categoryIdx, categorySyncIdx: $categorySyncIdx, content: $content, startDt: $startDt, endDt: $endDt, cycleType: $cycleType, cycleValue: $cycleValue, rm: $rm, createDt: $createDt, updateDt: $updateDt, status: $status, syncStatus: $syncStatus, syncDt: $syncDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoutineImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.syncIdx, syncIdx) || other.syncIdx == syncIdx) &&
            (identical(other.categoryIdx, categoryIdx) ||
                other.categoryIdx == categoryIdx) &&
            (identical(other.categorySyncIdx, categorySyncIdx) ||
                other.categorySyncIdx == categorySyncIdx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.startDt, startDt) || other.startDt == startDt) &&
            (identical(other.endDt, endDt) || other.endDt == endDt) &&
            (identical(other.cycleType, cycleType) ||
                other.cycleType == cycleType) &&
            (identical(other.cycleValue, cycleValue) ||
                other.cycleValue == cycleValue) &&
            (identical(other.rm, rm) || other.rm == rm) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus) &&
            (identical(other.syncDt, syncDt) || other.syncDt == syncDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      syncIdx,
      categoryIdx,
      categorySyncIdx,
      content,
      startDt,
      endDt,
      cycleType,
      cycleValue,
      rm,
      createDt,
      updateDt,
      status,
      syncStatus,
      syncDt);

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoutineImplCopyWith<_$RoutineImpl> get copyWith =>
      __$$RoutineImplCopyWithImpl<_$RoutineImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoutineImplToJson(
      this,
    );
  }
}

abstract class _Routine implements Routine {
  factory _Routine(
      {final int? idx,
      final int? syncIdx,
      final int? categoryIdx,
      final int? categorySyncIdx,
      required final String content,
      required final DateTime startDt,
      required final DateTime endDt,
      required final String cycleType,
      required final String cycleValue,
      final String rm,
      final DateTime? createDt,
      required final DateTime updateDt,
      final String status,
      final String? syncStatus,
      final DateTime? syncDt}) = _$RoutineImpl;

  factory _Routine.fromJson(Map<String, dynamic> json) = _$RoutineImpl.fromJson;

  @override
  int? get idx;
  @override
  int? get syncIdx;
  @override
  int? get categoryIdx;
  @override
  int? get categorySyncIdx;
  @override
  String get content;
  @override
  DateTime get startDt;
  @override
  DateTime get endDt;
  @override
  String get cycleType;
  @override
  String get cycleValue;
  @override
  String get rm;
  @override
  DateTime? get createDt;
  @override
  DateTime get updateDt;
  @override
  String get status;
  @override
  String? get syncStatus;
  @override
  DateTime? get syncDt;

  /// Create a copy of Routine
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoutineImplCopyWith<_$RoutineImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
