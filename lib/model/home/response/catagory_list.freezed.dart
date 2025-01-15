// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catagory_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryList _$CategoryListFromJson(Map<String, dynamic> json) {
  return _CategoryList.fromJson(json);
}

/// @nodoc
mixin _$CategoryList {
  int get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;
  String get publicStatus => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  List<TodoItem> get todos => throw _privateConstructorUsedError;

  /// Serializes this CategoryList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListCopyWith<CategoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListCopyWith<$Res> {
  factory $CategoryListCopyWith(
          CategoryList value, $Res Function(CategoryList) then) =
      _$CategoryListCopyWithImpl<$Res, CategoryList>;
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
class _$CategoryListCopyWithImpl<$Res, $Val extends CategoryList>
    implements $CategoryListCopyWith<$Res> {
  _$CategoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryList
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
abstract class _$$CategoryListImplCopyWith<$Res>
    implements $CategoryListCopyWith<$Res> {
  factory _$$CategoryListImplCopyWith(
          _$CategoryListImpl value, $Res Function(_$CategoryListImpl) then) =
      __$$CategoryListImplCopyWithImpl<$Res>;
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
class __$$CategoryListImplCopyWithImpl<$Res>
    extends _$CategoryListCopyWithImpl<$Res, _$CategoryListImpl>
    implements _$$CategoryListImplCopyWith<$Res> {
  __$$CategoryListImplCopyWithImpl(
      _$CategoryListImpl _value, $Res Function(_$CategoryListImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryList
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
    return _then(_$CategoryListImpl(
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
class _$CategoryListImpl implements _CategoryList {
  _$CategoryListImpl(
      {required this.idx,
      required this.title,
      required this.mainColor,
      required this.publicStatus,
      required this.createDt,
      this.updateDt,
      required final List<TodoItem> todos})
      : _todos = todos;

  factory _$CategoryListImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListImplFromJson(json);

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
    return 'CategoryList(idx: $idx, title: $title, mainColor: $mainColor, publicStatus: $publicStatus, createDt: $createDt, updateDt: $updateDt, todos: $todos)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListImpl &&
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

  /// Create a copy of CategoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListImplCopyWith<_$CategoryListImpl> get copyWith =>
      __$$CategoryListImplCopyWithImpl<_$CategoryListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListImplToJson(
      this,
    );
  }
}

abstract class _CategoryList implements CategoryList {
  factory _CategoryList(
      {required final int idx,
      required final String title,
      required final String mainColor,
      required final String publicStatus,
      required final DateTime createDt,
      final DateTime? updateDt,
      required final List<TodoItem> todos}) = _$CategoryListImpl;

  factory _CategoryList.fromJson(Map<String, dynamic> json) =
      _$CategoryListImpl.fromJson;

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

  /// Create a copy of CategoryList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListImplCopyWith<_$CategoryListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
