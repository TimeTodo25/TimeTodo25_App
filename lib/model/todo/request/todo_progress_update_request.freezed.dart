// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_progress_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoProgressUpdateRequest _$TodoProgressUpdateRequestFromJson(
    Map<String, dynamic> json) {
  return _TodoProgressUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoProgressUpdateRequest {
  int get idx => throw _privateConstructorUsedError;
  int get progressStatus => throw _privateConstructorUsedError;

  /// Serializes this TodoProgressUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoProgressUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoProgressUpdateRequestCopyWith<TodoProgressUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoProgressUpdateRequestCopyWith<$Res> {
  factory $TodoProgressUpdateRequestCopyWith(TodoProgressUpdateRequest value,
          $Res Function(TodoProgressUpdateRequest) then) =
      _$TodoProgressUpdateRequestCopyWithImpl<$Res, TodoProgressUpdateRequest>;
  @useResult
  $Res call({int idx, int progressStatus});
}

/// @nodoc
class _$TodoProgressUpdateRequestCopyWithImpl<$Res,
        $Val extends TodoProgressUpdateRequest>
    implements $TodoProgressUpdateRequestCopyWith<$Res> {
  _$TodoProgressUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoProgressUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? progressStatus = null,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoProgressUpdateRequestImplCopyWith<$Res>
    implements $TodoProgressUpdateRequestCopyWith<$Res> {
  factory _$$TodoProgressUpdateRequestImplCopyWith(
          _$TodoProgressUpdateRequestImpl value,
          $Res Function(_$TodoProgressUpdateRequestImpl) then) =
      __$$TodoProgressUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int idx, int progressStatus});
}

/// @nodoc
class __$$TodoProgressUpdateRequestImplCopyWithImpl<$Res>
    extends _$TodoProgressUpdateRequestCopyWithImpl<$Res,
        _$TodoProgressUpdateRequestImpl>
    implements _$$TodoProgressUpdateRequestImplCopyWith<$Res> {
  __$$TodoProgressUpdateRequestImplCopyWithImpl(
      _$TodoProgressUpdateRequestImpl _value,
      $Res Function(_$TodoProgressUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoProgressUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? progressStatus = null,
  }) {
    return _then(_$TodoProgressUpdateRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoProgressUpdateRequestImpl implements _TodoProgressUpdateRequest {
  _$TodoProgressUpdateRequestImpl(
      {required this.idx, required this.progressStatus});

  factory _$TodoProgressUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoProgressUpdateRequestImplFromJson(json);

  @override
  final int idx;
  @override
  final int progressStatus;

  @override
  String toString() {
    return 'TodoProgressUpdateRequest(idx: $idx, progressStatus: $progressStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoProgressUpdateRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.progressStatus, progressStatus) ||
                other.progressStatus == progressStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, progressStatus);

  /// Create a copy of TodoProgressUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoProgressUpdateRequestImplCopyWith<_$TodoProgressUpdateRequestImpl>
      get copyWith => __$$TodoProgressUpdateRequestImplCopyWithImpl<
          _$TodoProgressUpdateRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoProgressUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _TodoProgressUpdateRequest implements TodoProgressUpdateRequest {
  factory _TodoProgressUpdateRequest(
      {required final int idx,
      required final int progressStatus}) = _$TodoProgressUpdateRequestImpl;

  factory _TodoProgressUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$TodoProgressUpdateRequestImpl.fromJson;

  @override
  int get idx;
  @override
  int get progressStatus;

  /// Create a copy of TodoProgressUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoProgressUpdateRequestImplCopyWith<_$TodoProgressUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
