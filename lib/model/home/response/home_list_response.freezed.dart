// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeListResponse _$HomeListResponseFromJson(Map<String, dynamic> json) {
  return _HomeListResponse.fromJson(json);
}

/// @nodoc
mixin _$HomeListResponse {
  List<IntervalDayTodoList> get dDayList =>
      throw _privateConstructorUsedError; // 디데이
  List<CategoryList> get categoryList => throw _privateConstructorUsedError;

  /// Serializes this HomeListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeListResponseCopyWith<HomeListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeListResponseCopyWith<$Res> {
  factory $HomeListResponseCopyWith(
          HomeListResponse value, $Res Function(HomeListResponse) then) =
      _$HomeListResponseCopyWithImpl<$Res, HomeListResponse>;
  @useResult
  $Res call(
      {List<IntervalDayTodoList> dDayList, List<CategoryList> categoryList});
}

/// @nodoc
class _$HomeListResponseCopyWithImpl<$Res, $Val extends HomeListResponse>
    implements $HomeListResponseCopyWith<$Res> {
  _$HomeListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dDayList = null,
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      dDayList: null == dDayList
          ? _value.dDayList
          : dDayList // ignore: cast_nullable_to_non_nullable
              as List<IntervalDayTodoList>,
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeListResponseImplCopyWith<$Res>
    implements $HomeListResponseCopyWith<$Res> {
  factory _$$HomeListResponseImplCopyWith(_$HomeListResponseImpl value,
          $Res Function(_$HomeListResponseImpl) then) =
      __$$HomeListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<IntervalDayTodoList> dDayList, List<CategoryList> categoryList});
}

/// @nodoc
class __$$HomeListResponseImplCopyWithImpl<$Res>
    extends _$HomeListResponseCopyWithImpl<$Res, _$HomeListResponseImpl>
    implements _$$HomeListResponseImplCopyWith<$Res> {
  __$$HomeListResponseImplCopyWithImpl(_$HomeListResponseImpl _value,
      $Res Function(_$HomeListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dDayList = null,
    Object? categoryList = null,
  }) {
    return _then(_$HomeListResponseImpl(
      dDayList: null == dDayList
          ? _value._dDayList
          : dDayList // ignore: cast_nullable_to_non_nullable
              as List<IntervalDayTodoList>,
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeListResponseImpl implements _HomeListResponse {
  _$HomeListResponseImpl(
      {required final List<IntervalDayTodoList> dDayList,
      required final List<CategoryList> categoryList})
      : _dDayList = dDayList,
        _categoryList = categoryList;

  factory _$HomeListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeListResponseImplFromJson(json);

  final List<IntervalDayTodoList> _dDayList;
  @override
  List<IntervalDayTodoList> get dDayList {
    if (_dDayList is EqualUnmodifiableListView) return _dDayList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dDayList);
  }

// 디데이
  final List<CategoryList> _categoryList;
// 디데이
  @override
  List<CategoryList> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'HomeListResponse(dDayList: $dDayList, categoryList: $categoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeListResponseImpl &&
            const DeepCollectionEquality().equals(other._dDayList, _dDayList) &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_dDayList),
      const DeepCollectionEquality().hash(_categoryList));

  /// Create a copy of HomeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeListResponseImplCopyWith<_$HomeListResponseImpl> get copyWith =>
      __$$HomeListResponseImplCopyWithImpl<_$HomeListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeListResponseImplToJson(
      this,
    );
  }
}

abstract class _HomeListResponse implements HomeListResponse {
  factory _HomeListResponse(
      {required final List<IntervalDayTodoList> dDayList,
      required final List<CategoryList> categoryList}) = _$HomeListResponseImpl;

  factory _HomeListResponse.fromJson(Map<String, dynamic> json) =
      _$HomeListResponseImpl.fromJson;

  @override
  List<IntervalDayTodoList> get dDayList; // 디데이
  @override
  List<CategoryList> get categoryList;

  /// Create a copy of HomeListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeListResponseImplCopyWith<_$HomeListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
