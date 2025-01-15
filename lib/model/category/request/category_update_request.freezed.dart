// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryUpdateRequest _$CategoryUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _CategoryUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryUpdateRequest {
  int get idx => throw _privateConstructorUsedError;
  String get categoryTitle => throw _privateConstructorUsedError;
  String get publicStatus => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;

  /// Serializes this CategoryUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryUpdateRequestCopyWith<CategoryUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryUpdateRequestCopyWith<$Res> {
  factory $CategoryUpdateRequestCopyWith(CategoryUpdateRequest value,
          $Res Function(CategoryUpdateRequest) then) =
      _$CategoryUpdateRequestCopyWithImpl<$Res, CategoryUpdateRequest>;
  @useResult
  $Res call(
      {int idx, String categoryTitle, String publicStatus, String mainColor});
}

/// @nodoc
class _$CategoryUpdateRequestCopyWithImpl<$Res,
        $Val extends CategoryUpdateRequest>
    implements $CategoryUpdateRequestCopyWith<$Res> {
  _$CategoryUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryTitle = null,
    Object? publicStatus = null,
    Object? mainColor = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryUpdateRequestImplCopyWith<$Res>
    implements $CategoryUpdateRequestCopyWith<$Res> {
  factory _$$CategoryUpdateRequestImplCopyWith(
          _$CategoryUpdateRequestImpl value,
          $Res Function(_$CategoryUpdateRequestImpl) then) =
      __$$CategoryUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx, String categoryTitle, String publicStatus, String mainColor});
}

/// @nodoc
class __$$CategoryUpdateRequestImplCopyWithImpl<$Res>
    extends _$CategoryUpdateRequestCopyWithImpl<$Res,
        _$CategoryUpdateRequestImpl>
    implements _$$CategoryUpdateRequestImplCopyWith<$Res> {
  __$$CategoryUpdateRequestImplCopyWithImpl(_$CategoryUpdateRequestImpl _value,
      $Res Function(_$CategoryUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? categoryTitle = null,
    Object? publicStatus = null,
    Object? mainColor = null,
  }) {
    return _then(_$CategoryUpdateRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      categoryTitle: null == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as String,
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryUpdateRequestImpl implements _CategoryUpdateRequest {
  _$CategoryUpdateRequestImpl(
      {required this.idx,
      required this.categoryTitle,
      required this.publicStatus,
      required this.mainColor});

  factory _$CategoryUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryUpdateRequestImplFromJson(json);

  @override
  final int idx;
  @override
  final String categoryTitle;
  @override
  final String publicStatus;
  @override
  final String mainColor;

  @override
  String toString() {
    return 'CategoryUpdateRequest(idx: $idx, categoryTitle: $categoryTitle, publicStatus: $publicStatus, mainColor: $mainColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryUpdateRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, idx, categoryTitle, publicStatus, mainColor);

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryUpdateRequestImplCopyWith<_$CategoryUpdateRequestImpl>
      get copyWith => __$$CategoryUpdateRequestImplCopyWithImpl<
          _$CategoryUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _CategoryUpdateRequest implements CategoryUpdateRequest {
  factory _CategoryUpdateRequest(
      {required final int idx,
      required final String categoryTitle,
      required final String publicStatus,
      required final String mainColor}) = _$CategoryUpdateRequestImpl;

  factory _CategoryUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$CategoryUpdateRequestImpl.fromJson;

  @override
  int get idx;
  @override
  String get categoryTitle;
  @override
  String get publicStatus;
  @override
  String get mainColor;

  /// Create a copy of CategoryUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryUpdateRequestImplCopyWith<_$CategoryUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
