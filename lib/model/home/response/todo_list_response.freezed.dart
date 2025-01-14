// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoListResponse _$TodoListResponseFromJson(Map<String, dynamic> json) {
  return _TodoListResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoListResponse {
  List<IntervalDayTodo> get intervalDayTodos =>
      throw _privateConstructorUsedError;
  List<CategoryWithTodos> get categories => throw _privateConstructorUsedError;

  /// Serializes this TodoListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoListResponseCopyWith<TodoListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListResponseCopyWith<$Res> {
  factory $TodoListResponseCopyWith(
          TodoListResponse value, $Res Function(TodoListResponse) then) =
      _$TodoListResponseCopyWithImpl<$Res, TodoListResponse>;
  @useResult
  $Res call(
      {List<IntervalDayTodo> intervalDayTodos,
      List<CategoryWithTodos> categories});
}

/// @nodoc
class _$TodoListResponseCopyWithImpl<$Res, $Val extends TodoListResponse>
    implements $TodoListResponseCopyWith<$Res> {
  _$TodoListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalDayTodos = null,
    Object? categories = null,
  }) {
    return _then(_value.copyWith(
      intervalDayTodos: null == intervalDayTodos
          ? _value.intervalDayTodos
          : intervalDayTodos // ignore: cast_nullable_to_non_nullable
              as List<IntervalDayTodo>,
      categories: null == categories
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryWithTodos>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoListResponseImplCopyWith<$Res>
    implements $TodoListResponseCopyWith<$Res> {
  factory _$$TodoListResponseImplCopyWith(_$TodoListResponseImpl value,
          $Res Function(_$TodoListResponseImpl) then) =
      __$$TodoListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IntervalDayTodo> intervalDayTodos,
      List<CategoryWithTodos> categories});
}

/// @nodoc
class __$$TodoListResponseImplCopyWithImpl<$Res>
    extends _$TodoListResponseCopyWithImpl<$Res, _$TodoListResponseImpl>
    implements _$$TodoListResponseImplCopyWith<$Res> {
  __$$TodoListResponseImplCopyWithImpl(_$TodoListResponseImpl _value,
      $Res Function(_$TodoListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intervalDayTodos = null,
    Object? categories = null,
  }) {
    return _then(_$TodoListResponseImpl(
      intervalDayTodos: null == intervalDayTodos
          ? _value._intervalDayTodos
          : intervalDayTodos // ignore: cast_nullable_to_non_nullable
              as List<IntervalDayTodo>,
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<CategoryWithTodos>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoListResponseImpl implements _TodoListResponse {
  _$TodoListResponseImpl(
      {required final List<IntervalDayTodo> intervalDayTodos,
      required final List<CategoryWithTodos> categories})
      : _intervalDayTodos = intervalDayTodos,
        _categories = categories;

  factory _$TodoListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoListResponseImplFromJson(json);

  final List<IntervalDayTodo> _intervalDayTodos;
  @override
  List<IntervalDayTodo> get intervalDayTodos {
    if (_intervalDayTodos is EqualUnmodifiableListView)
      return _intervalDayTodos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_intervalDayTodos);
  }

  final List<CategoryWithTodos> _categories;
  @override
  List<CategoryWithTodos> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  @override
  String toString() {
    return 'TodoListResponse(intervalDayTodos: $intervalDayTodos, categories: $categories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._intervalDayTodos, _intervalDayTodos) &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_intervalDayTodos),
      const DeepCollectionEquality().hash(_categories));

  /// Create a copy of TodoListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoListResponseImplCopyWith<_$TodoListResponseImpl> get copyWith =>
      __$$TodoListResponseImplCopyWithImpl<_$TodoListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoListResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoListResponse implements TodoListResponse {
  factory _TodoListResponse(
          {required final List<IntervalDayTodo> intervalDayTodos,
          required final List<CategoryWithTodos> categories}) =
      _$TodoListResponseImpl;

  factory _TodoListResponse.fromJson(Map<String, dynamic> json) =
      _$TodoListResponseImpl.fromJson;

  @override
  List<IntervalDayTodo> get intervalDayTodos;
  @override
  List<CategoryWithTodos> get categories;

  /// Create a copy of TodoListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoListResponseImplCopyWith<_$TodoListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
