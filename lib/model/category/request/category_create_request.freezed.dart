// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryCreateRequest _$CategoryCreateRequestFromJson(
    Map<String, dynamic> json) {
  return _CategoryCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$CategoryCreateRequest {
  int get user_idx => throw _privateConstructorUsedError;
  String get categoryTitle => throw _privateConstructorUsedError;
  String get mainColor => throw _privateConstructorUsedError;
  String get publicStatus => throw _privateConstructorUsedError;

  /// Serializes this CategoryCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCreateRequestCopyWith<CategoryCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCreateRequestCopyWith<$Res> {
  factory $CategoryCreateRequestCopyWith(CategoryCreateRequest value,
          $Res Function(CategoryCreateRequest) then) =
      _$CategoryCreateRequestCopyWithImpl<$Res, CategoryCreateRequest>;
  @useResult
  $Res call(
      {int user_idx,
      String categoryTitle,
      String mainColor,
      String publicStatus});
}

/// @nodoc
class _$CategoryCreateRequestCopyWithImpl<$Res,
        $Val extends CategoryCreateRequest>
    implements $CategoryCreateRequestCopyWith<$Res> {
  _$CategoryCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_idx = null,
    Object? categoryTitle = null,
    Object? mainColor = null,
    Object? publicStatus = null,
  }) {
    return _then(_value.copyWith(
      user_idx: null == user_idx
          ? _value.user_idx
          : user_idx // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryCreateRequestImplCopyWith<$Res>
    implements $CategoryCreateRequestCopyWith<$Res> {
  factory _$$CategoryCreateRequestImplCopyWith(
          _$CategoryCreateRequestImpl value,
          $Res Function(_$CategoryCreateRequestImpl) then) =
      __$$CategoryCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int user_idx,
      String categoryTitle,
      String mainColor,
      String publicStatus});
}

/// @nodoc
class __$$CategoryCreateRequestImplCopyWithImpl<$Res>
    extends _$CategoryCreateRequestCopyWithImpl<$Res,
        _$CategoryCreateRequestImpl>
    implements _$$CategoryCreateRequestImplCopyWith<$Res> {
  __$$CategoryCreateRequestImplCopyWithImpl(_$CategoryCreateRequestImpl _value,
      $Res Function(_$CategoryCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user_idx = null,
    Object? categoryTitle = null,
    Object? mainColor = null,
    Object? publicStatus = null,
  }) {
    return _then(_$CategoryCreateRequestImpl(
      user_idx: null == user_idx
          ? _value.user_idx
          : user_idx // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryCreateRequestImpl implements _CategoryCreateRequest {
  _$CategoryCreateRequestImpl(
      {required this.user_idx,
      required this.categoryTitle,
      required this.mainColor,
      required this.publicStatus});

  factory _$CategoryCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryCreateRequestImplFromJson(json);

  @override
  final int user_idx;
  @override
  final String categoryTitle;
  @override
  final String mainColor;
  @override
  final String publicStatus;

  @override
  String toString() {
    return 'CategoryCreateRequest(user_idx: $user_idx, categoryTitle: $categoryTitle, mainColor: $mainColor, publicStatus: $publicStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryCreateRequestImpl &&
            (identical(other.user_idx, user_idx) ||
                other.user_idx == user_idx) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, user_idx, categoryTitle, mainColor, publicStatus);

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryCreateRequestImplCopyWith<_$CategoryCreateRequestImpl>
      get copyWith => __$$CategoryCreateRequestImplCopyWithImpl<
          _$CategoryCreateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _CategoryCreateRequest implements CategoryCreateRequest {
  factory _CategoryCreateRequest(
      {required final int user_idx,
      required final String categoryTitle,
      required final String mainColor,
      required final String publicStatus}) = _$CategoryCreateRequestImpl;

  factory _CategoryCreateRequest.fromJson(Map<String, dynamic> json) =
      _$CategoryCreateRequestImpl.fromJson;

  @override
  int get user_idx;
  @override
  String get categoryTitle;
  @override
  String get mainColor;
  @override
  String get publicStatus;

  /// Create a copy of CategoryCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryCreateRequestImplCopyWith<_$CategoryCreateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
