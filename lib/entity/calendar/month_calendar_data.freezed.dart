// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'month_calendar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MonthlyCalendarData {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError;
  List<DayCalendarData> get days => throw _privateConstructorUsedError;
  double get monthlyAchievementRate => throw _privateConstructorUsedError;
  int get totalTodoCount => throw _privateConstructorUsedError;
  Duration get totalTodoTime => throw _privateConstructorUsedError;

  /// Create a copy of MonthlyCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MonthlyCalendarDataCopyWith<MonthlyCalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MonthlyCalendarDataCopyWith<$Res> {
  factory $MonthlyCalendarDataCopyWith(
          MonthlyCalendarData value, $Res Function(MonthlyCalendarData) then) =
      _$MonthlyCalendarDataCopyWithImpl<$Res, MonthlyCalendarData>;
  @useResult
  $Res call(
      {int year,
      int month,
      List<DayCalendarData> days,
      double monthlyAchievementRate,
      int totalTodoCount,
      Duration totalTodoTime});
}

/// @nodoc
class _$MonthlyCalendarDataCopyWithImpl<$Res, $Val extends MonthlyCalendarData>
    implements $MonthlyCalendarDataCopyWith<$Res> {
  _$MonthlyCalendarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MonthlyCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? days = null,
    Object? monthlyAchievementRate = null,
    Object? totalTodoCount = null,
    Object? totalTodoTime = null,
  }) {
    return _then(_value.copyWith(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayCalendarData>,
      monthlyAchievementRate: null == monthlyAchievementRate
          ? _value.monthlyAchievementRate
          : monthlyAchievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      totalTodoCount: null == totalTodoCount
          ? _value.totalTodoCount
          : totalTodoCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTodoTime: null == totalTodoTime
          ? _value.totalTodoTime
          : totalTodoTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MonthlyCalendarDataImplCopyWith<$Res>
    implements $MonthlyCalendarDataCopyWith<$Res> {
  factory _$$MonthlyCalendarDataImplCopyWith(_$MonthlyCalendarDataImpl value,
          $Res Function(_$MonthlyCalendarDataImpl) then) =
      __$$MonthlyCalendarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int year,
      int month,
      List<DayCalendarData> days,
      double monthlyAchievementRate,
      int totalTodoCount,
      Duration totalTodoTime});
}

/// @nodoc
class __$$MonthlyCalendarDataImplCopyWithImpl<$Res>
    extends _$MonthlyCalendarDataCopyWithImpl<$Res, _$MonthlyCalendarDataImpl>
    implements _$$MonthlyCalendarDataImplCopyWith<$Res> {
  __$$MonthlyCalendarDataImplCopyWithImpl(_$MonthlyCalendarDataImpl _value,
      $Res Function(_$MonthlyCalendarDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of MonthlyCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? year = null,
    Object? month = null,
    Object? days = null,
    Object? monthlyAchievementRate = null,
    Object? totalTodoCount = null,
    Object? totalTodoTime = null,
  }) {
    return _then(_$MonthlyCalendarDataImpl(
      year: null == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: null == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      days: null == days
          ? _value._days
          : days // ignore: cast_nullable_to_non_nullable
              as List<DayCalendarData>,
      monthlyAchievementRate: null == monthlyAchievementRate
          ? _value.monthlyAchievementRate
          : monthlyAchievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      totalTodoCount: null == totalTodoCount
          ? _value.totalTodoCount
          : totalTodoCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalTodoTime: null == totalTodoTime
          ? _value.totalTodoTime
          : totalTodoTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$MonthlyCalendarDataImpl implements _MonthlyCalendarData {
  _$MonthlyCalendarDataImpl(
      {required this.year,
      required this.month,
      required final List<DayCalendarData> days,
      required this.monthlyAchievementRate,
      required this.totalTodoCount,
      required this.totalTodoTime})
      : _days = days;

  @override
  final int year;
  @override
  final int month;
  final List<DayCalendarData> _days;
  @override
  List<DayCalendarData> get days {
    if (_days is EqualUnmodifiableListView) return _days;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_days);
  }

  @override
  final double monthlyAchievementRate;
  @override
  final int totalTodoCount;
  @override
  final Duration totalTodoTime;

  @override
  String toString() {
    return 'MonthlyCalendarData(year: $year, month: $month, days: $days, monthlyAchievementRate: $monthlyAchievementRate, totalTodoCount: $totalTodoCount, totalTodoTime: $totalTodoTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MonthlyCalendarDataImpl &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.month, month) || other.month == month) &&
            const DeepCollectionEquality().equals(other._days, _days) &&
            (identical(other.monthlyAchievementRate, monthlyAchievementRate) ||
                other.monthlyAchievementRate == monthlyAchievementRate) &&
            (identical(other.totalTodoCount, totalTodoCount) ||
                other.totalTodoCount == totalTodoCount) &&
            (identical(other.totalTodoTime, totalTodoTime) ||
                other.totalTodoTime == totalTodoTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      year,
      month,
      const DeepCollectionEquality().hash(_days),
      monthlyAchievementRate,
      totalTodoCount,
      totalTodoTime);

  /// Create a copy of MonthlyCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MonthlyCalendarDataImplCopyWith<_$MonthlyCalendarDataImpl> get copyWith =>
      __$$MonthlyCalendarDataImplCopyWithImpl<_$MonthlyCalendarDataImpl>(
          this, _$identity);
}

abstract class _MonthlyCalendarData implements MonthlyCalendarData {
  factory _MonthlyCalendarData(
      {required final int year,
      required final int month,
      required final List<DayCalendarData> days,
      required final double monthlyAchievementRate,
      required final int totalTodoCount,
      required final Duration totalTodoTime}) = _$MonthlyCalendarDataImpl;

  @override
  int get year;
  @override
  int get month;
  @override
  List<DayCalendarData> get days;
  @override
  double get monthlyAchievementRate;
  @override
  int get totalTodoCount;
  @override
  Duration get totalTodoTime;

  /// Create a copy of MonthlyCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MonthlyCalendarDataImplCopyWith<_$MonthlyCalendarDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
