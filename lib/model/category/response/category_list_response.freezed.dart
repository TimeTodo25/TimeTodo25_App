// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryListResponse _$CategoryListResponseFromJson(Map<String, dynamic> json) {
  return _CategoryListResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryListResponse {
  List<CategoryList> get categoryList => throw _privateConstructorUsedError;

  /// Serializes this CategoryListResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryListResponseCopyWith<CategoryListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryListResponseCopyWith<$Res> {
  factory $CategoryListResponseCopyWith(CategoryListResponse value,
          $Res Function(CategoryListResponse) then) =
      _$CategoryListResponseCopyWithImpl<$Res, CategoryListResponse>;
  @useResult
  $Res call({List<CategoryList> categoryList});
}

/// @nodoc
class _$CategoryListResponseCopyWithImpl<$Res,
        $Val extends CategoryListResponse>
    implements $CategoryListResponseCopyWith<$Res> {
  _$CategoryListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_value.copyWith(
      categoryList: null == categoryList
          ? _value.categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryList>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryListResponseImplCopyWith<$Res>
    implements $CategoryListResponseCopyWith<$Res> {
  factory _$$CategoryListResponseImplCopyWith(_$CategoryListResponseImpl value,
          $Res Function(_$CategoryListResponseImpl) then) =
      __$$CategoryListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CategoryList> categoryList});
}

/// @nodoc
class __$$CategoryListResponseImplCopyWithImpl<$Res>
    extends _$CategoryListResponseCopyWithImpl<$Res, _$CategoryListResponseImpl>
    implements _$$CategoryListResponseImplCopyWith<$Res> {
  __$$CategoryListResponseImplCopyWithImpl(_$CategoryListResponseImpl _value,
      $Res Function(_$CategoryListResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryList = null,
  }) {
    return _then(_$CategoryListResponseImpl(
      categoryList: null == categoryList
          ? _value._categoryList
          : categoryList // ignore: cast_nullable_to_non_nullable
              as List<CategoryList>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryListResponseImpl implements _CategoryListResponse {
  _$CategoryListResponseImpl({required final List<CategoryList> categoryList})
      : _categoryList = categoryList;

  factory _$CategoryListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryListResponseImplFromJson(json);

  final List<CategoryList> _categoryList;
  @override
  List<CategoryList> get categoryList {
    if (_categoryList is EqualUnmodifiableListView) return _categoryList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categoryList);
  }

  @override
  String toString() {
    return 'CategoryListResponse(categoryList: $categoryList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryListResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._categoryList, _categoryList));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_categoryList));

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith =>
          __$$CategoryListResponseImplCopyWithImpl<_$CategoryListResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryListResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryListResponse implements CategoryListResponse {
  factory _CategoryListResponse(
          {required final List<CategoryList> categoryList}) =
      _$CategoryListResponseImpl;

  factory _CategoryListResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryListResponseImpl.fromJson;

  @override
  List<CategoryList> get categoryList;

  /// Create a copy of CategoryListResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryListResponseImplCopyWith<_$CategoryListResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
