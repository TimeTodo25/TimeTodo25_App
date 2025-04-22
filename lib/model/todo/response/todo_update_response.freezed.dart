// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_update_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TodoUpdateResponse _$TodoUpdateResponseFromJson(Map<String, dynamic> json) {
  return _TodoUpdateResponse.fromJson(json);
}

/// @nodoc
mixin _$TodoUpdateResponse {
  @DateTimeIsoConverter()
  DateTime get updateDt => throw _privateConstructorUsedError;

  /// Serializes this TodoUpdateResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TodoUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TodoUpdateResponseCopyWith<TodoUpdateResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoUpdateResponseCopyWith<$Res> {
  factory $TodoUpdateResponseCopyWith(
          TodoUpdateResponse value, $Res Function(TodoUpdateResponse) then) =
      _$TodoUpdateResponseCopyWithImpl<$Res, TodoUpdateResponse>;
  @useResult
  $Res call({@DateTimeIsoConverter() DateTime updateDt});
}

/// @nodoc
class _$TodoUpdateResponseCopyWithImpl<$Res, $Val extends TodoUpdateResponse>
    implements $TodoUpdateResponseCopyWith<$Res> {
  _$TodoUpdateResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TodoUpdateResponse
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
abstract class _$$TodoUpdateResponseImplCopyWith<$Res>
    implements $TodoUpdateResponseCopyWith<$Res> {
  factory _$$TodoUpdateResponseImplCopyWith(_$TodoUpdateResponseImpl value,
          $Res Function(_$TodoUpdateResponseImpl) then) =
      __$$TodoUpdateResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@DateTimeIsoConverter() DateTime updateDt});
}

/// @nodoc
class __$$TodoUpdateResponseImplCopyWithImpl<$Res>
    extends _$TodoUpdateResponseCopyWithImpl<$Res, _$TodoUpdateResponseImpl>
    implements _$$TodoUpdateResponseImplCopyWith<$Res> {
  __$$TodoUpdateResponseImplCopyWithImpl(_$TodoUpdateResponseImpl _value,
      $Res Function(_$TodoUpdateResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of TodoUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateDt = null,
  }) {
    return _then(_$TodoUpdateResponseImpl(
      updateDt: null == updateDt
          ? _value.updateDt
          : updateDt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoUpdateResponseImpl implements _TodoUpdateResponse {
  _$TodoUpdateResponseImpl({@DateTimeIsoConverter() required this.updateDt});

  factory _$TodoUpdateResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoUpdateResponseImplFromJson(json);

  @override
  @DateTimeIsoConverter()
  final DateTime updateDt;

  @override
  String toString() {
    return 'TodoUpdateResponse(updateDt: $updateDt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoUpdateResponseImpl &&
            (identical(other.updateDt, updateDt) ||
                other.updateDt == updateDt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, updateDt);

  /// Create a copy of TodoUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoUpdateResponseImplCopyWith<_$TodoUpdateResponseImpl> get copyWith =>
      __$$TodoUpdateResponseImplCopyWithImpl<_$TodoUpdateResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoUpdateResponseImplToJson(
      this,
    );
  }
}

abstract class _TodoUpdateResponse implements TodoUpdateResponse {
  factory _TodoUpdateResponse(
          {@DateTimeIsoConverter() required final DateTime updateDt}) =
      _$TodoUpdateResponseImpl;

  factory _TodoUpdateResponse.fromJson(Map<String, dynamic> json) =
      _$TodoUpdateResponseImpl.fromJson;

  @override
  @DateTimeIsoConverter()
  DateTime get updateDt;

  /// Create a copy of TodoUpdateResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TodoUpdateResponseImplCopyWith<_$TodoUpdateResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
