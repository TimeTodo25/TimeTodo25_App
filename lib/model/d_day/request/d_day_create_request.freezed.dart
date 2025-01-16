// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'd_day_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DdayCreateRequest _$DdayCreateRequestFromJson(Map<String, dynamic> json) {
  return _DdayCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$DdayCreateRequest {
  int get userIdx => throw _privateConstructorUsedError; // 스웨거에 아직 없음
  String get content =>
      throw _privateConstructorUsedError; // 이거 왜 스웨거에 int로 되어있/?
  DateTime get targetDt => throw _privateConstructorUsedError;
  bool get targetDelYn => throw _privateConstructorUsedError;

  /// Serializes this DdayCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DdayCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DdayCreateRequestCopyWith<DdayCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DdayCreateRequestCopyWith<$Res> {
  factory $DdayCreateRequestCopyWith(
          DdayCreateRequest value, $Res Function(DdayCreateRequest) then) =
      _$DdayCreateRequestCopyWithImpl<$Res, DdayCreateRequest>;
  @useResult
  $Res call({int userIdx, String content, DateTime targetDt, bool targetDelYn});
}

/// @nodoc
class _$DdayCreateRequestCopyWithImpl<$Res, $Val extends DdayCreateRequest>
    implements $DdayCreateRequestCopyWith<$Res> {
  _$DdayCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DdayCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdx = null,
    Object? content = null,
    Object? targetDt = null,
    Object? targetDelYn = null,
  }) {
    return _then(_value.copyWith(
      userIdx: null == userIdx
          ? _value.userIdx
          : userIdx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      targetDt: null == targetDt
          ? _value.targetDt
          : targetDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetDelYn: null == targetDelYn
          ? _value.targetDelYn
          : targetDelYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DdayCreateRequestImplCopyWith<$Res>
    implements $DdayCreateRequestCopyWith<$Res> {
  factory _$$DdayCreateRequestImplCopyWith(_$DdayCreateRequestImpl value,
          $Res Function(_$DdayCreateRequestImpl) then) =
      __$$DdayCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int userIdx, String content, DateTime targetDt, bool targetDelYn});
}

/// @nodoc
class __$$DdayCreateRequestImplCopyWithImpl<$Res>
    extends _$DdayCreateRequestCopyWithImpl<$Res, _$DdayCreateRequestImpl>
    implements _$$DdayCreateRequestImplCopyWith<$Res> {
  __$$DdayCreateRequestImplCopyWithImpl(_$DdayCreateRequestImpl _value,
      $Res Function(_$DdayCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of DdayCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userIdx = null,
    Object? content = null,
    Object? targetDt = null,
    Object? targetDelYn = null,
  }) {
    return _then(_$DdayCreateRequestImpl(
      userIdx: null == userIdx
          ? _value.userIdx
          : userIdx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      targetDt: null == targetDt
          ? _value.targetDt
          : targetDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      targetDelYn: null == targetDelYn
          ? _value.targetDelYn
          : targetDelYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DdayCreateRequestImpl implements _DdayCreateRequest {
  _$DdayCreateRequestImpl(
      {required this.userIdx,
      required this.content,
      required this.targetDt,
      required this.targetDelYn});

  factory _$DdayCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$DdayCreateRequestImplFromJson(json);

  @override
  final int userIdx;
// 스웨거에 아직 없음
  @override
  final String content;
// 이거 왜 스웨거에 int로 되어있/?
  @override
  final DateTime targetDt;
  @override
  final bool targetDelYn;

  @override
  String toString() {
    return 'DdayCreateRequest(userIdx: $userIdx, content: $content, targetDt: $targetDt, targetDelYn: $targetDelYn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DdayCreateRequestImpl &&
            (identical(other.userIdx, userIdx) || other.userIdx == userIdx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.targetDt, targetDt) ||
                other.targetDt == targetDt) &&
            (identical(other.targetDelYn, targetDelYn) ||
                other.targetDelYn == targetDelYn));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, userIdx, content, targetDt, targetDelYn);

  /// Create a copy of DdayCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DdayCreateRequestImplCopyWith<_$DdayCreateRequestImpl> get copyWith =>
      __$$DdayCreateRequestImplCopyWithImpl<_$DdayCreateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DdayCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _DdayCreateRequest implements DdayCreateRequest {
  factory _DdayCreateRequest(
      {required final int userIdx,
      required final String content,
      required final DateTime targetDt,
      required final bool targetDelYn}) = _$DdayCreateRequestImpl;

  factory _DdayCreateRequest.fromJson(Map<String, dynamic> json) =
      _$DdayCreateRequestImpl.fromJson;

  @override
  int get userIdx; // 스웨거에 아직 없음
  @override
  String get content; // 이거 왜 스웨거에 int로 되어있/?
  @override
  DateTime get targetDt;
  @override
  bool get targetDelYn;

  /// Create a copy of DdayCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DdayCreateRequestImplCopyWith<_$DdayCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
