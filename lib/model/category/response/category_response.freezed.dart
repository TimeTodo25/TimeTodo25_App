// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryResponse _$CategoryResponseFromJson(Map<String, dynamic> json) {
  return _CategoryResponse.fromJson(json);
}

/// @nodoc
mixin _$CategoryResponse {
  int get category_idx => throw _privateConstructorUsedError;
  String get categoryTitle => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;
  String get publicStatus => throw _privateConstructorUsedError;
  DateTime get createDt => throw _privateConstructorUsedError;
  DateTime get updateDt => throw _privateConstructorUsedError;

  /// Serializes this CategoryResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryResponseCopyWith<CategoryResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryResponseCopyWith<$Res> {
  factory $CategoryResponseCopyWith(
          CategoryResponse value, $Res Function(CategoryResponse) then) =
      _$CategoryResponseCopyWithImpl<$Res, CategoryResponse>;
  @useResult
  $Res call(
      {int category_idx,
      String categoryTitle,
      String mainColor,
      String publicStatus,
      DateTime createDt,
      DateTime updateDt});
}

/// @nodoc
class _$CategoryResponseCopyWithImpl<$Res, $Val extends CategoryResponse>
    implements $CategoryResponseCopyWith<$Res> {
  _$CategoryResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category_idx = null,
    Object? categoryTitle = null,
    Object? mainColor = null,
    Object? publicStatus = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_value.copyWith(
      category_idx: null == category_idx
          ? _value.category_idx
          : category_idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
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
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryResponseImplCopyWith<$Res>
    implements $CategoryResponseCopyWith<$Res> {
  factory _$$CategoryResponseImplCopyWith(_$CategoryResponseImpl value,
          $Res Function(_$CategoryResponseImpl) then) =
      __$$CategoryResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int category_idx,
      String categoryTitle,
      String mainColor,
      String publicStatus,
      DateTime createDt,
      DateTime updateDt});
}

/// @nodoc
class __$$CategoryResponseImplCopyWithImpl<$Res>
    extends _$CategoryResponseCopyWithImpl<$Res, _$CategoryResponseImpl>
    implements _$$CategoryResponseImplCopyWith<$Res> {
  __$$CategoryResponseImplCopyWithImpl(_$CategoryResponseImpl _value,
      $Res Function(_$CategoryResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category_idx = null,
    Object? categoryTitle = null,
    Object? mainColor = null,
    Object? publicStatus = null,
    Object? createDt = null,
    Object? updateDt = null,
  }) {
    return _then(_$CategoryResponseImpl(
      category_idx: null == category_idx
          ? _value.category_idx
          : category_idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
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
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryResponseImpl implements _CategoryResponse {
  _$CategoryResponseImpl(
      {required this.category_idx,
      required this.categoryTitle,
      required this.mainColor,
      required this.publicStatus,
      required this.createDt,
      required this.updateDt});

  factory _$CategoryResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryResponseImplFromJson(json);

  @override
  final int category_idx;
  @override
  final String categoryTitle;
  @override
  final String mainColor;
  @override
  final String publicStatus;
  @override
  final DateTime createDt;
  @override
  final DateTime updateDt;

  @override
  String toString() {
    return 'CategoryResponse(category_idx: $category_idx, categoryTitle: $categoryTitle, mainColor: $mainColor, publicStatus: $publicStatus, createDt: $createDt, updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryResponseImpl &&
            (identical(other.category_idx, category_idx) ||
                other.category_idx == category_idx) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, category_idx, categoryTitle,
      mainColor, publicStatus, createDt, updateDt);

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      __$$CategoryResponseImplCopyWithImpl<_$CategoryResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryResponseImplToJson(
      this,
    );
  }
}

abstract class _CategoryResponse implements CategoryResponse {
  factory _CategoryResponse(
      {required final int category_idx,
      required final String categoryTitle,
      required final String mainColor,
      required final String publicStatus,
      required final DateTime createDt,
      required final DateTime updateDt}) = _$CategoryResponseImpl;

  factory _CategoryResponse.fromJson(Map<String, dynamic> json) =
      _$CategoryResponseImpl.fromJson;

  @override
  int get category_idx;
  @override
  String get categoryTitle;
  @override
  String get mainColor;
  @override
  String get publicStatus;
  @override
  DateTime get createDt;
  @override
  DateTime get updateDt;

  /// Create a copy of CategoryResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryResponseImplCopyWith<_$CategoryResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
