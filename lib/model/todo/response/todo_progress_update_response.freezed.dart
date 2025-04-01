// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_progress_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoProgressUpdateResponse _$TodoProgressUpdateResponseFromJson(
    Map<String, dynamic> json) {
  return _TodoProgressUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoProgressUpdateResponse {
  @DateTimeIsoConverter()
  DateTime get updateDt => throw _privateConstructorUsedError;

  /// Serializes this TodoProgressUpdateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoProgressUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoProgressUpdateResponseCopyWith<TodoProgressUpdateResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoProgressUpdateResponseCopyWith<$Res> {
  factory $TodoProgressUpdateResponseCopyWith(TodoProgressUpdateResponse value,
          $Res Function(TodoProgressUpdateResponse) then) =
      _$TodoProgressUpdateResponseCopyWithImpl<$Res,
          TodoProgressUpdateResponse>;
  @useResult
  $Res call({@DateTimeIsoConverter() DateTime updateDt});
}

/// @nodoc
class _$TodoProgressUpdateResponseCopyWithImpl<$Res,
        $Val extends TodoProgressUpdateResponse>
    implements $TodoProgressUpdateResponseCopyWith<$Res> {
  _$TodoProgressUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoProgressUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateDt = null,
  }) {
    return _then(_value.copyWith(
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoProgressUpdateResponseImplCopyWith<$Res>
    implements $TodoProgressUpdateResponseCopyWith<$Res> {
  factory _$$TodoProgressUpdateResponseImplCopyWith(
          _$TodoProgressUpdateResponseImpl value,
          $Res Function(_$TodoProgressUpdateResponseImpl) then) =
      __$$TodoProgressUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@DateTimeIsoConverter() DateTime updateDt});
}

/// @nodoc
class __$$TodoProgressUpdateResponseImplCopyWithImpl<$Res>
    extends _$TodoProgressUpdateResponseCopyWithImpl<$Res,
        _$TodoProgressUpdateResponseImpl>
    implements _$$TodoProgressUpdateResponseImplCopyWith<$Res> {
  __$$TodoProgressUpdateResponseImplCopyWithImpl(
      _$TodoProgressUpdateResponseImpl _value,
      $Res Function(_$TodoProgressUpdateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoProgressUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateDt = null,
  }) {
    return _then(_$TodoProgressUpdateResponseImpl(
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoProgressUpdateResponseImpl implements _TodoProgressUpdateResponse {
  _$TodoProgressUpdateResponseImpl(
      {@DateTimeIsoConverter() required this.updateDt});

  factory _$TodoProgressUpdateResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TodoProgressUpdateResponseImplFromJson(json);

  @override
  @DateTimeIsoConverter()
  final DateTime updateDt;

  @override
  String toString() {
    return 'TodoProgressUpdateResponse(updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoProgressUpdateResponseImpl &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updateDt);

  /// Create a copy of TodoProgressUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoProgressUpdateResponseImplCopyWith<_$TodoProgressUpdateResponseImpl>
      get copyWith => __$$TodoProgressUpdateResponseImplCopyWithImpl<
          _$TodoProgressUpdateResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoProgressUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoProgressUpdateResponse
    implements TodoProgressUpdateResponse {
  factory _TodoProgressUpdateResponse(
          {@DateTimeIsoConverter() required final DateTime updateDt}) =
      _$TodoProgressUpdateResponseImpl;

  factory _TodoProgressUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$TodoProgressUpdateResponseImpl.fromJson;

  @override
  @DateTimeIsoConverter()
  DateTime get updateDt;

  /// Create a copy of TodoProgressUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoProgressUpdateResponseImplCopyWith<_$TodoProgressUpdateResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
