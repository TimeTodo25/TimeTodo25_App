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
  String get userName => throw _privateConstructorUsedError;
  String get categoryColor => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get createDt => throw _privateConstructorUsedError;
  DateTime? get updateDt => throw _privateConstructorUsedError;
  DateTime? get deleteDt => throw _privateConstructorUsedError;
  VisibilityOption get publicStatus => throw _privateConstructorUsedError;
  int? get syncIdx => throw _privateConstructorUsedError; // 서버 pk
  int? get syncCategoryIdx => throw _privateConstructorUsedError; // 서버 fk
  DateTime? get syncDt => throw _privateConstructorUsedError; // 서버 동기화 시간
  String get syncStatus => throw _privateConstructorUsedError;

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
      String userName,
      String categoryColor,
      String status,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      VisibilityOption publicStatus,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
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
    Object? syncIdx = freezed,
    Object? syncCategoryIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
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
              as String,
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
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncCategoryIdx: freezed == syncCategoryIdx
          ? _value.syncCategoryIdx
          : syncCategoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String,
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
      String userName,
      String categoryColor,
      String status,
      DateTime? createDt,
      DateTime? updateDt,
      DateTime? deleteDt,
      VisibilityOption publicStatus,
      int? syncIdx,
      int? syncCategoryIdx,
      DateTime? syncDt,
      String syncStatus});
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
    Object? syncIdx = freezed,
    Object? syncCategoryIdx = freezed,
    Object? syncDt = freezed,
    Object? syncStatus = null,
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
              as String,
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
      syncIdx: freezed == syncIdx
          ? _value.syncIdx
          : syncIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncCategoryIdx: freezed == syncCategoryIdx
          ? _value.syncCategoryIdx
          : syncCategoryIdx // ignore: cast_nullable_to_non_nullable
              as int?,
      syncDt: freezed == syncDt
          ? _value.syncDt
          : syncDt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      syncStatus: null == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  _$CategoryImpl(
      {this.idx,
      required this.title,
      required this.userName,
      required this.categoryColor,
      this.status = "Y",
      this.createDt,
      this.updateDt,
      this.deleteDt,
      required this.publicStatus,
      this.syncIdx,
      this.syncCategoryIdx,
      this.syncDt,
      this.syncStatus = "P"});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int? idx;
  @override
  final String title;
  @override
  final String userName;
  @override
  final String categoryColor;
  @override
  @JsonKey()
  final String status;
  @override
  final DateTime? createDt;
  @override
  final DateTime? updateDt;
  @override
  final DateTime? deleteDt;
  @override
  final VisibilityOption publicStatus;
  @override
  final int? syncIdx;
// 서버 pk
  @override
  final int? syncCategoryIdx;
// 서버 fk
  @override
  final DateTime? syncDt;
// 서버 동기화 시간
  @override
  @JsonKey()
  final String syncStatus;

  @override
  String toString() {
    return 'CategoryModel(idx: $idx, title: $title, userName: $userName, categoryColor: $categoryColor, status: $status, createDt: $createDt, updateDt: $updateDt, deleteDt: $deleteDt, publicStatus: $publicStatus, syncIdx: $syncIdx, syncCategoryIdx: $syncCategoryIdx, syncDt: $syncDt, syncStatus: $syncStatus)';
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
                other.publicStatus == publicStatus) &&
            (identical(other.syncIdx, syncIdx) || other.syncIdx == syncIdx) &&
            (identical(other.syncCategoryIdx, syncCategoryIdx) ||
                other.syncCategoryIdx == syncCategoryIdx) &&
            (identical(other.syncDt, syncDt) || other.syncDt == syncDt) &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      idx,
      title,
      userName,
      categoryColor,
      status,
      createDt,
      updateDt,
      deleteDt,
      publicStatus,
      syncIdx,
      syncCategoryIdx,
      syncDt,
      syncStatus);

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
      required final String userName,
      required final String categoryColor,
      final String status,
      final DateTime? createDt,
      final DateTime? updateDt,
      final DateTime? deleteDt,
      required final VisibilityOption publicStatus,
      final int? syncIdx,
      final int? syncCategoryIdx,
      final DateTime? syncDt,
      final String syncStatus}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int? get idx;
  @override
  String get title;
  @override
  String get userName;
  @override
  String get categoryColor;
  @override
  String get status;
  @override
  DateTime? get createDt;
  @override
  DateTime? get updateDt;
  @override
  DateTime? get deleteDt;
  @override
  VisibilityOption get publicStatus;
  @override
  int? get syncIdx; // 서버 pk
  @override
  int? get syncCategoryIdx; // 서버 fk
  @override
  DateTime? get syncDt; // 서버 동기화 시간
  @override
  String get syncStatus;

  /// Create a copy of CategoryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
