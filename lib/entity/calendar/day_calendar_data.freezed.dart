// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'day_calendar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DayCalendarData {
  DateTime get date => throw _privateConstructorUsedError;
  List<CategoryCalendarData> get categories =>
      throw _privateConstructorUsedError;
  double get dailyAchievementRate => throw _privateConstructorUsedError;
  int get todoCount => throw _privateConstructorUsedError;
  int get todoTime => throw _privateConstructorUsedError;

  /// Create a copy of DayCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DayCalendarDataCopyWith<DayCalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DayCalendarDataCopyWith<$Res> {
  factory $DayCalendarDataCopyWith(
          DayCalendarData value, $Res Function(DayCalendarData) then) =
      _$DayCalendarDataCopyWithImpl<$Res, DayCalendarData>;
  @useResult
  $Res call(
      {DateTime date,
      List<CategoryCalendarData> categories,
      double dailyAchievementRate,
      int todoCount,
      int todoTime});
}

/// @nodoc
class _$DayCalendarDataCopyWithImpl<$Res, $Val extends DayCalendarData>
    implements $DayCalendarDataCopyWith<$Res> {
  _$DayCalendarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DayCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? categories = null,
    Object? dailyAchievementRate = null,
    Object? todoCount = null,
    Object? todoTime = null,
  }) {
    return _then(_value.copyWith(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryCalendarData>,
      dailyAchievementRate: null == dailyAchievementRate
          ? _value.dailyAchievementRate
          : dailyAchievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      todoCount: null == todoCount
          ? _value.todoCount
          : todoCount // ignore: cast_nullable_to_non_nullable
              as int,
      todoTime: null == todoTime
          ? _value.todoTime
          : todoTime // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DayCalendarDataImplCopyWith<$Res>
    implements $DayCalendarDataCopyWith<$Res> {
  factory _$$DayCalendarDataImplCopyWith(_$DayCalendarDataImpl value,
          $Res Function(_$DayCalendarDataImpl) then) =
      __$$DayCalendarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime date,
      List<CategoryCalendarData> categories,
      double dailyAchievementRate,
      int todoCount,
      int todoTime});
}

/// @nodoc
class __$$DayCalendarDataImplCopyWithImpl<$Res>
    extends _$DayCalendarDataCopyWithImpl<$Res, _$DayCalendarDataImpl>
    implements _$$DayCalendarDataImplCopyWith<$Res> {
  __$$DayCalendarDataImplCopyWithImpl(
      _$DayCalendarDataImpl _value, $Res Function(_$DayCalendarDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of DayCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
    Object? categories = null,
    Object? dailyAchievementRate = null,
    Object? todoCount = null,
    Object? todoTime = null,
  }) {
    return _then(_$DayCalendarDataImpl(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryCalendarData>,
      dailyAchievementRate: null == dailyAchievementRate
          ? _value.dailyAchievementRate
          : dailyAchievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      todoCount: null == todoCount
          ? _value.todoCount
          : todoCount // ignore: cast_nullable_to_non_nullable
              as int,
      todoTime: null == todoTime
          ? _value.todoTime
          : todoTime // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DayCalendarDataImpl implements _DayCalendarData {
  _$DayCalendarDataImpl(
      {required this.date,
      required final List<CategoryCalendarData> categories,
      required this.dailyAchievementRate,
      required this.todoCount,
      required this.todoTime})
      : _categories = categories;

  @override
  final DateTime date;
  final List<CategoryCalendarData> _categories;
  @override
  List<CategoryCalendarData> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  final double dailyAchievementRate;
  @override
  final int todoCount;
  @override
  final int todoTime;

  @override
  String toString() {
    return 'DayCalendarData(date: $date, categories: $categories, dailyAchievementRate: $dailyAchievementRate, todoCount: $todoCount, todoTime: $todoTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DayCalendarDataImpl &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            (identical(other.dailyAchievementRate, dailyAchievementRate) ||
                other.dailyAchievementRate == dailyAchievementRate) &&
            (identical(other.todoCount, todoCount) ||
                other.todoCount == todoCount) &&
            (identical(other.todoTime, todoTime) ||
                other.todoTime == todoTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      date,
      const DeepCollectionEquality().hash(_categories),
      dailyAchievementRate,
      todoCount,
      todoTime);

  /// Create a copy of DayCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DayCalendarDataImplCopyWith<_$DayCalendarDataImpl> get copyWith =>
      __$$DayCalendarDataImplCopyWithImpl<_$DayCalendarDataImpl>(
          this, _$identity);
}

abstract class _DayCalendarData implements DayCalendarData {
  factory _DayCalendarData(
      {required final DateTime date,
      required final List<CategoryCalendarData> categories,
      required final double dailyAchievementRate,
      required final int todoCount,
      required final int todoTime}) = _$DayCalendarDataImpl;

  @override
  DateTime get date;
  @override
  List<CategoryCalendarData> get categories;
  @override
  double get dailyAchievementRate;
  @override
  int get todoCount;
  @override
  int get todoTime;

  /// Create a copy of DayCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DayCalendarDataImplCopyWith<_$DayCalendarDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
