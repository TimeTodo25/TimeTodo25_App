// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoDetailResponse _$TodoDetailResponseFromJson(Map<String, dynamic> json) {
  return _TodoDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoDetailResponse {
  int get idx => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get totalTm => throw _privateConstructorUsedError;
  List<TimerHistories>? get timerHistories =>
      throw _privateConstructorUsedError;

  /// Serializes this TodoDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoDetailResponseCopyWith<TodoDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDetailResponseCopyWith<$Res> {
  factory $TodoDetailResponseCopyWith(
          TodoDetailResponse value, $Res Function(TodoDetailResponse) then) =
      _$TodoDetailResponseCopyWithImpl<$Res, TodoDetailResponse>;
  @useResult
  $Res call(
      {int idx,
      String content,
      String? totalTm,
      List<TimerHistories>? timerHistories});
}

/// @nodoc
class _$TodoDetailResponseCopyWithImpl<$Res, $Val extends TodoDetailResponse>
    implements $TodoDetailResponseCopyWith<$Res> {
  _$TodoDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? totalTm = freezed,
    Object? timerHistories = freezed,
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
      totalTm: freezed == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String?,
      timerHistories: freezed == timerHistories
          ? _value.timerHistories
          : timerHistories // ignore: cast_nullable_to_non_nullable
              as List<TimerHistories>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoDetailResponseImplCopyWith<$Res>
    implements $TodoDetailResponseCopyWith<$Res> {
  factory _$$TodoDetailResponseImplCopyWith(_$TodoDetailResponseImpl value,
          $Res Function(_$TodoDetailResponseImpl) then) =
      __$$TodoDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int idx,
      String content,
      String? totalTm,
      List<TimerHistories>? timerHistories});
}

/// @nodoc
class __$$TodoDetailResponseImplCopyWithImpl<$Res>
    extends _$TodoDetailResponseCopyWithImpl<$Res, _$TodoDetailResponseImpl>
    implements _$$TodoDetailResponseImplCopyWith<$Res> {
  __$$TodoDetailResponseImplCopyWithImpl(_$TodoDetailResponseImpl _value,
      $Res Function(_$TodoDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? content = null,
    Object? totalTm = freezed,
    Object? timerHistories = freezed,
  }) {
    return _then(_$TodoDetailResponseImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      totalTm: freezed == totalTm
          ? _value.totalTm
          : totalTm // ignore: cast_nullable_to_non_nullable
              as String?,
      timerHistories: freezed == timerHistories
          ? _value._timerHistories
          : timerHistories // ignore: cast_nullable_to_non_nullable
              as List<TimerHistories>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoDetailResponseImpl implements _TodoDetailResponse {
  _$TodoDetailResponseImpl(
      {required this.idx,
      required this.content,
      this.totalTm,
      final List<TimerHistories>? timerHistories})
      : _timerHistories = timerHistories;

  factory _$TodoDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoDetailResponseImplFromJson(json);

  @override
  final int idx;
  @override
  final String content;
  @override
  final String? totalTm;
  final List<TimerHistories>? _timerHistories;
  @override
  List<TimerHistories>? get timerHistories {
    final value = _timerHistories;
    if (value == null) return null;
    if (_timerHistories is EqualUnmodifiableListView) return _timerHistories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TodoDetailResponse(idx: $idx, content: $content, totalTm: $totalTm, timerHistories: $timerHistories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoDetailResponseImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.totalTm, totalTm) || other.totalTm == totalTm) &&
            const DeepCollectionEquality()
                .equals(other._timerHistories, _timerHistories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, idx, content, totalTm,
      const DeepCollectionEquality().hash(_timerHistories));

  /// Create a copy of TodoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoDetailResponseImplCopyWith<_$TodoDetailResponseImpl> get copyWith =>
      __$$TodoDetailResponseImplCopyWithImpl<_$TodoDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoDetailResponse implements TodoDetailResponse {
  factory _TodoDetailResponse(
      {required final int idx,
      required final String content,
      final String? totalTm,
      final List<TimerHistories>? timerHistories}) = _$TodoDetailResponseImpl;

  factory _TodoDetailResponse.fromJson(Map<String, dynamic> json) =
      _$TodoDetailResponseImpl.fromJson;

  @override
  int get idx;
  @override
  String get content;
  @override
  String? get totalTm;
  @override
  List<TimerHistories>? get timerHistories;

  /// Create a copy of TodoDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoDetailResponseImplCopyWith<_$TodoDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
