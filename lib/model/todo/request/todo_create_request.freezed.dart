// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_create_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoCreateRequest _$TodoCreateRequestFromJson(Map<String, dynamic> json) {
  return _TodoCreateRequest.fromJson(json);
}

/// @nodoc
mixin _$TodoCreateRequest {
  String get content => throw _privateConstructorUsedError;
  int get categoryIdx => throw _privateConstructorUsedError; // 카테고리 idx
  DateTime get date => throw _privateConstructorUsedError; // 투두 일시
  DateTime? get startTargetTm => throw _privateConstructorUsedError;
  DateTime? get endTargetTm => throw _privateConstructorUsedError;

  /// Serializes this TodoCreateRequest to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoCreateRequestCopyWith<TodoCreateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCreateRequestCopyWith<$Res> {
  factory $TodoCreateRequestCopyWith(
          TodoCreateRequest value, $Res Function(TodoCreateRequest) then) =
      _$TodoCreateRequestCopyWithImpl<$Res, TodoCreateRequest>;
  @useResult
  $Res call(
      {String content,
      int categoryIdx,
      DateTime date,
      DateTime? startTargetTm,
      DateTime? endTargetTm});
}

/// @nodoc
class _$TodoCreateRequestCopyWithImpl<$Res, $Val extends TodoCreateRequest>
    implements $TodoCreateRequestCopyWith<$Res> {
  _$TodoCreateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? categoryIdx = null,
    Object? date = null,
    Object? startTargetTm = freezed,
    Object? endTargetTm = freezed,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
abstract class _$$TodoCreateRequestImplCopyWith<$Res>
    implements $TodoCreateRequestCopyWith<$Res> {
  factory _$$TodoCreateRequestImplCopyWith(_$TodoCreateRequestImpl value,
          $Res Function(_$TodoCreateRequestImpl) then) =
      __$$TodoCreateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String content,
      int categoryIdx,
      DateTime date,
      DateTime? startTargetTm,
      DateTime? endTargetTm});
}

/// @nodoc
class __$$TodoCreateRequestImplCopyWithImpl<$Res>
    extends _$TodoCreateRequestCopyWithImpl<$Res, _$TodoCreateRequestImpl>
    implements _$$TodoCreateRequestImplCopyWith<$Res> {
  __$$TodoCreateRequestImplCopyWithImpl(_$TodoCreateRequestImpl _value,
      $Res Function(_$TodoCreateRequestImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? categoryIdx = null,
    Object? date = null,
    Object? startTargetTm = freezed,
    Object? endTargetTm = freezed,
  }) {
    return _then(_$TodoCreateRequestImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      categoryIdx: null == categoryIdx
          ? _value.categoryIdx
          : categoryIdx // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
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
class _$TodoCreateRequestImpl implements _TodoCreateRequest {
  _$TodoCreateRequestImpl(
      {required this.content,
      required this.categoryIdx,
      required this.date,
      this.startTargetTm,
      this.endTargetTm});

  factory _$TodoCreateRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoCreateRequestImplFromJson(json);

  @override
  final String content;
  @override
  final int categoryIdx;
// 카테고리 idx
  @override
  final DateTime date;
// 투두 일시
  @override
  final DateTime? startTargetTm;
  @override
  final DateTime? endTargetTm;

  @override
  String toString() {
    return 'TodoCreateRequest(content: $content, categoryIdx: $categoryIdx, date: $date, startTargetTm: $startTargetTm, endTargetTm: $endTargetTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoCreateRequestImpl &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.categoryIdx, categoryIdx) ||
                other.categoryIdx == categoryIdx) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.startTargetTm, startTargetTm) ||
                other.startTargetTm == startTargetTm) &&
            (identical(other.endTargetTm, endTargetTm) ||
                other.endTargetTm == endTargetTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, content, categoryIdx, date, startTargetTm, endTargetTm);

  /// Create a copy of TodoCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoCreateRequestImplCopyWith<_$TodoCreateRequestImpl> get copyWith =>
      __$$TodoCreateRequestImplCopyWithImpl<_$TodoCreateRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoCreateRequestImplToJson(
      this,
    );
  }
}

abstract class _TodoCreateRequest implements TodoCreateRequest {
  factory _TodoCreateRequest(
      {required final String content,
      required final int categoryIdx,
      required final DateTime date,
      final DateTime? startTargetTm,
      final DateTime? endTargetTm}) = _$TodoCreateRequestImpl;

  factory _TodoCreateRequest.fromJson(Map<String, dynamic> json) =
      _$TodoCreateRequestImpl.fromJson;

  @override
  String get content;
  @override
  int get categoryIdx; // 카테고리 idx
  @override
  DateTime get date; // 투두 일시
  @override
  DateTime? get startTargetTm;
  @override
  DateTime? get endTargetTm;

  /// Create a copy of TodoCreateRequest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoCreateRequestImplCopyWith<_$TodoCreateRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
