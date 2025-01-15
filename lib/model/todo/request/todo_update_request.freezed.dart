// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_update_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoUpdateRequest _$TodoUpdateRequestFromJson(Map<String, dynamic> json) {
  return _TodoUpdateRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoUpdateRequest {
  int get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  DateTime get targetDate => throw _privateConstructorUsedError; // 투두 일시
  DateTime? get startTargetTm => throw _privateConstructorUsedError;
  DateTime? get endTargetTm => throw _privateConstructorUsedError;

  /// Serializes this TodoUpdateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoUpdateRequestCopyWith<TodoUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUpdateRequestCopyWith<$Res> {
  factory $TodoUpdateRequestCopyWith(
          TodoUpdateRequest value, $Res Function(TodoUpdateRequest) then) =
      _$TodoUpdateRequestCopyWithImpl<$Res, TodoUpdateRequest>;
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime targetDate,
      DateTime? startTargetTm,
      DateTime? endTargetTm});
}

/// @nodoc
class _$TodoUpdateRequestCopyWithImpl<$Res, $Val extends TodoUpdateRequest>
    implements $TodoUpdateRequestCopyWith<$Res> {
  _$TodoUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? targetDate = null,
    Object? startTargetTm = freezed,
    Object? endTargetTm = freezed,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTargetTm: freezed == startTargetTm
          ? _value.startTargetTm
          : startTargetTm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTargetTm: freezed == endTargetTm
          ? _value.endTargetTm
          : endTargetTm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoUpdateRequestImplCopyWith<$Res>
    implements $TodoUpdateRequestCopyWith<$Res> {
  factory _$$TodoUpdateRequestImplCopyWith(_$TodoUpdateRequestImpl value,
          $Res Function(_$TodoUpdateRequestImpl) then) =
      __$$TodoUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String content,
      DateTime targetDate,
      DateTime? startTargetTm,
      DateTime? endTargetTm});
}

/// @nodoc
class __$$TodoUpdateRequestImplCopyWithImpl<$Res>
    extends _$TodoUpdateRequestCopyWithImpl<$Res, _$TodoUpdateRequestImpl>
    implements _$$TodoUpdateRequestImplCopyWith<$Res> {
  __$$TodoUpdateRequestImplCopyWithImpl(_$TodoUpdateRequestImpl _value,
      $Res Function(_$TodoUpdateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? targetDate = null,
    Object? startTargetTm = freezed,
    Object? endTargetTm = freezed,
  }) {
    return _then(_$TodoUpdateRequestImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      targetDate: null == targetDate
          ? _value.targetDate
          : targetDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      startTargetTm: freezed == startTargetTm
          ? _value.startTargetTm
          : startTargetTm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTargetTm: freezed == endTargetTm
          ? _value.endTargetTm
          : endTargetTm // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoUpdateRequestImpl implements _TodoUpdateRequest {
  _$TodoUpdateRequestImpl(
      {required this.idx,
      required this.content,
      required this.targetDate,
      this.startTargetTm,
      this.endTargetTm});

  factory _$TodoUpdateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoUpdateRequestImplFromJson(json);

  @override
  final int idx;
  @override
  final String content;
  @override
  final DateTime targetDate;
// 투두 일시
  @override
  final DateTime? startTargetTm;
  @override
  final DateTime? endTargetTm;

  @override
  String toString() {
    return 'TodoUpdateRequest(idx: $idx, content: $content, targetDate: $targetDate, startTargetTm: $startTargetTm, endTargetTm: $endTargetTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoUpdateRequestImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.targetDate, targetDate) ||
                other.targetDate == targetDate) &&
            (identical(other.startTargetTm, startTargetTm) ||
                other.startTargetTm == startTargetTm) &&
            (identical(other.endTargetTm, endTargetTm) ||
                other.endTargetTm == endTargetTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, idx, content, targetDate, startTargetTm, endTargetTm);

  /// Create a copy of TodoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoUpdateRequestImplCopyWith<_$TodoUpdateRequestImpl> get copyWith =>
      __$$TodoUpdateRequestImplCopyWithImpl<_$TodoUpdateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoUpdateRequestImplToJson(
      this,
    );
  }
}

abstract class _TodoUpdateRequest implements TodoUpdateRequest {
  factory _TodoUpdateRequest(
      {required final int idx,
      required final String content,
      required final DateTime targetDate,
      final DateTime? startTargetTm,
      final DateTime? endTargetTm}) = _$TodoUpdateRequestImpl;

  factory _TodoUpdateRequest.fromJson(Map<String, dynamic> json) =
      _$TodoUpdateRequestImpl.fromJson;

  @override
  int get idx;
  @override
  String get content;
  @override
  DateTime get targetDate; // 투두 일시
  @override
  DateTime? get startTargetTm;
  @override
  DateTime? get endTargetTm;

  /// Create a copy of TodoUpdateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoUpdateRequestImplCopyWith<_$TodoUpdateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
