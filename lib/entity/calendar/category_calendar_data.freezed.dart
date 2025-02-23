// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_calendar_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CategoryCalendarData {
  int get categoryId => throw _privateConstructorUsedError;
  List<Todo> get todos => throw _privateConstructorUsedError;
  double get achievementRate => throw _privateConstructorUsedError;
  int get todoCount => throw _privateConstructorUsedError;
  Duration get todoTime => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCalendarDataCopyWith<CategoryCalendarData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCalendarDataCopyWith<$Res> {
  factory $CategoryCalendarDataCopyWith(CategoryCalendarData value,
          $Res Function(CategoryCalendarData) then) =
      _$CategoryCalendarDataCopyWithImpl<$Res, CategoryCalendarData>;
  @useResult
  $Res call(
      {int categoryId,
      List<Todo> todos,
      double achievementRate,
      int todoCount,
      Duration todoTime});
}

/// @nodoc
class _$CategoryCalendarDataCopyWithImpl<$Res,
        $Val extends CategoryCalendarData>
    implements $CategoryCalendarDataCopyWith<$Res> {
  _$CategoryCalendarDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? todos = null,
    Object? achievementRate = null,
    Object? todoCount = null,
    Object? todoTime = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      achievementRate: null == achievementRate
          ? _value.achievementRate
          : achievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      todoCount: null == todoCount
          ? _value.todoCount
          : todoCount // ignore: cast_nullable_to_non_nullable
              as int,
      todoTime: null == todoTime
          ? _value.todoTime
          : todoTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryCalendarDataImplCopyWith<$Res>
    implements $CategoryCalendarDataCopyWith<$Res> {
  factory _$$CategoryCalendarDataImplCopyWith(_$CategoryCalendarDataImpl value,
          $Res Function(_$CategoryCalendarDataImpl) then) =
      __$$CategoryCalendarDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int categoryId,
      List<Todo> todos,
      double achievementRate,
      int todoCount,
      Duration todoTime});
}

/// @nodoc
class __$$CategoryCalendarDataImplCopyWithImpl<$Res>
    extends _$CategoryCalendarDataCopyWithImpl<$Res, _$CategoryCalendarDataImpl>
    implements _$$CategoryCalendarDataImplCopyWith<$Res> {
  __$$CategoryCalendarDataImplCopyWithImpl(_$CategoryCalendarDataImpl _value,
      $Res Function(_$CategoryCalendarDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? todos = null,
    Object? achievementRate = null,
    Object? todoCount = null,
    Object? todoTime = null,
  }) {
    return _then(_$CategoryCalendarDataImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
      achievementRate: null == achievementRate
          ? _value.achievementRate
          : achievementRate // ignore: cast_nullable_to_non_nullable
              as double,
      todoCount: null == todoCount
          ? _value.todoCount
          : todoCount // ignore: cast_nullable_to_non_nullable
              as int,
      todoTime: null == todoTime
          ? _value.todoTime
          : todoTime // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$CategoryCalendarDataImpl implements _CategoryCalendarData {
  _$CategoryCalendarDataImpl(
      {required this.categoryId,
      required final List<Todo> todos,
      required this.achievementRate,
      required this.todoCount,
      required this.todoTime})
      : _todos = todos;

  @override
  final int categoryId;
  final List<Todo> _todos;
  @override
  List<Todo> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  final double achievementRate;
  @override
  final int todoCount;
  @override
  final Duration todoTime;

  @override
  String toString() {
    return 'CategoryCalendarData(categoryId: $categoryId, todos: $todos, achievementRate: $achievementRate, todoCount: $todoCount, todoTime: $todoTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCalendarDataImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._todos, _todos) &&
            (identical(other.achievementRate, achievementRate) ||
                other.achievementRate == achievementRate) &&
            (identical(other.todoCount, todoCount) ||
                other.todoCount == todoCount) &&
            (identical(other.todoTime, todoTime) ||
                other.todoTime == todoTime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      categoryId,
      const DeepCollectionEquality().hash(_todos),
      achievementRate,
      todoCount,
      todoTime);

  /// Create a copy of CategoryCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCalendarDataImplCopyWith<_$CategoryCalendarDataImpl>
      get copyWith =>
          __$$CategoryCalendarDataImplCopyWithImpl<_$CategoryCalendarDataImpl>(
              this, _$identity);
}

abstract class _CategoryCalendarData implements CategoryCalendarData {
  factory _CategoryCalendarData(
      {required final int categoryId,
      required final List<Todo> todos,
      required final double achievementRate,
      required final int todoCount,
      required final Duration todoTime}) = _$CategoryCalendarDataImpl;

  @override
  int get categoryId;
  @override
  List<Todo> get todos;
  @override
  double get achievementRate;
  @override
  int get todoCount;
  @override
  Duration get todoTime;

  /// Create a copy of CategoryCalendarData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCalendarDataImplCopyWith<_$CategoryCalendarDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}
