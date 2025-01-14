// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catagory_with_todos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryWithTodos _$CategoryWithTodosFromJson(Map<String, dynamic> json) {
  return _CategoryWithTodos.fromJson(json);
}

/// @nodoc
mixin _$CategoryWithTodos {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;
  String get publicStatus => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  List<TodoItem> get todos => throw _privateConstructorUsedError;

  /// Serializes this CategoryWithTodos to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryWithTodos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryWithTodosCopyWith<CategoryWithTodos> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryWithTodosCopyWith<$Res> {
  factory $CategoryWithTodosCopyWith(
          CategoryWithTodos value, $Res Function(CategoryWithTodos) then) =
      _$CategoryWithTodosCopyWithImpl<$Res, CategoryWithTodos>;
  @useResult
  $Res call(
      {int idx,
      String title,
      String mainColor,
      String publicStatus,
      DateTime createDt,
      DateTime? updateDt,
      List<TodoItem> todos});
}

/// @nodoc
class _$CategoryWithTodosCopyWithImpl<$Res, $Val extends CategoryWithTodos>
    implements $CategoryWithTodosCopyWith<$Res> {
  _$CategoryWithTodosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryWithTodos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? title = null,
    Object? mainColor = null,
    Object? publicStatus = null,
    Object? createDt = null,
    Object? updateDt = freezed,
    Object? todos = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todos: null == todos
          ? _value.todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryWithTodosImplCopyWith<$Res>
    implements $CategoryWithTodosCopyWith<$Res> {
  factory _$$CategoryWithTodosImplCopyWith(_$CategoryWithTodosImpl value,
          $Res Function(_$CategoryWithTodosImpl) then) =
      __$$CategoryWithTodosImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String title,
      String mainColor,
      String publicStatus,
      DateTime createDt,
      DateTime? updateDt,
      List<TodoItem> todos});
}

/// @nodoc
class __$$CategoryWithTodosImplCopyWithImpl<$Res>
    extends _$CategoryWithTodosCopyWithImpl<$Res, _$CategoryWithTodosImpl>
    implements _$$CategoryWithTodosImplCopyWith<$Res> {
  __$$CategoryWithTodosImplCopyWithImpl(_$CategoryWithTodosImpl _value,
      $Res Function(_$CategoryWithTodosImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryWithTodos
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? title = null,
    Object? mainColor = null,
    Object? publicStatus = null,
    Object? createDt = null,
    Object? updateDt = freezed,
    Object? todos = null,
  }) {
    return _then(_$CategoryWithTodosImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as String,
      createDt: null == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      todos: null == todos
          ? _value._todos
          : todos // ignore: cast_nullable_to_non_nullable
              as List<TodoItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryWithTodosImpl implements _CategoryWithTodos {
  _$CategoryWithTodosImpl(
      {required this.idx,
      required this.title,
      required this.mainColor,
      required this.publicStatus,
      required this.createDt,
      this.updateDt,
      required final List<TodoItem> todos})
      : _todos = todos;

  factory _$CategoryWithTodosImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryWithTodosImplFromJson(json);

  @override
  final int idx;
  @override
  final String title;
  @override
  final String mainColor;
  @override
  final String publicStatus;
  @override
  final DateTime createDt;
  @override
  final DateTime? updateDt;
  final List<TodoItem> _todos;
  @override
  List<TodoItem> get todos {
    if (_todos is EqualUnmodifiableListView) return _todos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todos);
  }

  @override
  String toString() {
    return 'CategoryWithTodos(idx: $idx, title: $title, mainColor: $mainColor, publicStatus: $publicStatus, createDt: $createDt, updateDt: $updateDt, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryWithTodosImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            const DeepCollectionEquality().equals(other._todos, _todos));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      title,
      mainColor,
      publicStatus,
      createDt,
      updateDt,
      const DeepCollectionEquality().hash(_todos));

  /// Create a copy of CategoryWithTodos
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryWithTodosImplCopyWith<_$CategoryWithTodosImpl> get copyWith =>
      __$$CategoryWithTodosImplCopyWithImpl<_$CategoryWithTodosImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryWithTodosImplToJson(
      this,
    );
  }
}

abstract class _CategoryWithTodos implements CategoryWithTodos {
  factory _CategoryWithTodos(
      {required final int idx,
      required final String title,
      required final String mainColor,
      required final String publicStatus,
      required final DateTime createDt,
      final DateTime? updateDt,
      required final List<TodoItem> todos}) = _$CategoryWithTodosImpl;

  factory _CategoryWithTodos.fromJson(Map<String, dynamic> json) =
      _$CategoryWithTodosImpl.fromJson;

  @override
  int get idx;
  @override
  String get title;
  @override
  String get mainColor;
  @override
  String get publicStatus;
  @override
  DateTime get createDt;
  @override
  DateTime? get updateDt;
  @override
  List<TodoItem> get todos;

  /// Create a copy of CategoryWithTodos
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryWithTodosImplCopyWith<_$CategoryWithTodosImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
