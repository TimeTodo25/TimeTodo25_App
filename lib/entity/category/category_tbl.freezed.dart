// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_tbl.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  int? get idx => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'main_color')
  String get categoryColor => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'create_dt')
  DateTime? get createDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'update_dt')
  DateTime? get updateDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'delete_dt')
  DateTime? get deleteDt => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_status')
  VisibilityOption get publicStatus => throw _privateConstructorUsedError;

  /// Serializes this CategoryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {int? idx,
      String title,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'main_color') String categoryColor,
      int status,
      @JsonKey(name: 'create_dt') DateTime? createDt,
      @JsonKey(name: 'update_dt') DateTime? updateDt,
      @JsonKey(name: 'delete_dt') DateTime? deleteDt,
      @JsonKey(name: 'public_status') VisibilityOption publicStatus});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? title = null,
    Object? userName = null,
    Object? categoryColor = null,
    Object? status = null,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? publicStatus = null,
  }) {
    return _then(_value.copyWith(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDt: freezed == deleteDt
          ? _value.deleteDt
          : deleteDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as VisibilityOption,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? idx,
      String title,
      @JsonKey(name: 'user_name') String userName,
      @JsonKey(name: 'main_color') String categoryColor,
      int status,
      @JsonKey(name: 'create_dt') DateTime? createDt,
      @JsonKey(name: 'update_dt') DateTime? updateDt,
      @JsonKey(name: 'delete_dt') DateTime? deleteDt,
      @JsonKey(name: 'public_status') VisibilityOption publicStatus});
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = freezed,
    Object? title = null,
    Object? userName = null,
    Object? categoryColor = null,
    Object? status = null,
    Object? createDt = freezed,
    Object? updateDt = freezed,
    Object? deleteDt = freezed,
    Object? publicStatus = null,
  }) {
    return _then(_$CategoryImpl(
      idx: freezed == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int?,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      categoryColor: null == categoryColor
          ? _value.categoryColor
          : categoryColor // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      createDt: freezed == createDt
          ? _value.createDt
          : createDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updateDt: freezed == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleteDt: freezed == deleteDt
          ? _value.deleteDt
          : deleteDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      publicStatus: null == publicStatus
          ? _value.publicStatus
          : publicStatus // ignore: cast_nullable_to_non_nullable
              as VisibilityOption,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  _$CategoryImpl(
      {this.idx,
      required this.title,
      @JsonKey(name: 'user_name') required this.userName,
      @JsonKey(name: 'main_color') required this.categoryColor,
      this.status = 1,
      @JsonKey(name: 'create_dt') this.createDt,
      @JsonKey(name: 'update_dt') this.updateDt,
      @JsonKey(name: 'delete_dt') this.deleteDt,
      @JsonKey(name: 'public_status') required this.publicStatus});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int? idx;
  @override
  final String title;
  @override
  @JsonKey(name: 'user_name')
  final String userName;
  @override
  @JsonKey(name: 'main_color')
  final String categoryColor;
  @override
  @JsonKey()
  final int status;
  @override
  @JsonKey(name: 'create_dt')
  final DateTime? createDt;
  @override
  @JsonKey(name: 'update_dt')
  final DateTime? updateDt;
  @override
  @JsonKey(name: 'delete_dt')
  final DateTime? deleteDt;
  @override
  @JsonKey(name: 'public_status')
  final VisibilityOption publicStatus;

  @override
  String toString() {
    return 'CategoryModel(idx: $idx, title: $title, userName: $userName, categoryColor: $categoryColor, status: $status, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt, publicStatus: $publicStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.categoryColor, categoryColor) ||
                other.categoryColor == categoryColor) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createDt, createDt) ||
                other.createDt == createDt) &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt) &&
            (identical(other.deleteDt, deleteDt) ||
                other.deleteDt == deleteDt) &&
            (identical(other.publicStatus, publicStatus) ||
                other.publicStatus == publicStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, title, userName,
      categoryColor, status, createDt, updateDt, deleteDt, publicStatus);

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements CategoryModel {
  factory _Category(
      {final int? idx,
      required final String title,
      @JsonKey(name: 'user_name') required final String userName,
      @JsonKey(name: 'main_color') required final String categoryColor,
      final int status,
      @JsonKey(name: 'create_dt') final DateTime? createDt,
      @JsonKey(name: 'update_dt') final DateTime? updateDt,
      @JsonKey(name: 'delete_dt') final DateTime? deleteDt,
      @JsonKey(name: 'public_status')
      required final VisibilityOption publicStatus}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int? get idx;
  @override
  String get title;
  @override
  @JsonKey(name: 'user_name')
  String get userName;
  @override
  @JsonKey(name: 'main_color')
  String get categoryColor;
  @override
  int get status;
  @override
  @JsonKey(name: 'create_dt')
  DateTime? get createDt;
  @override
  @JsonKey(name: 'update_dt')
  DateTime? get updateDt;
  @override
  @JsonKey(name: 'delete_dt')
  DateTime? get deleteDt;
  @override
  @JsonKey(name: 'public_status')
  VisibilityOption get publicStatus;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
