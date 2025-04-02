// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_timer_history_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HomeTimerHistoryList _$HomeTimerHistoryListFromJson(Map<String, dynamic> json) {
  return _HomeTimerHistoryList.fromJson(json);
}

/// @nodoc
mixin _$HomeTimerHistoryList {
  String get mainColor => throw _privateConstructorUsedError;
  DateTime get startTm => throw _privateConstructorUsedError;
  DateTime get endTm => throw _privateConstructorUsedError;

  /// Serializes this HomeTimerHistoryList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HomeTimerHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeTimerHistoryListCopyWith<HomeTimerHistoryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTimerHistoryListCopyWith<$Res> {
  factory $HomeTimerHistoryListCopyWith(HomeTimerHistoryList value,
          $Res Function(HomeTimerHistoryList) then) =
      _$HomeTimerHistoryListCopyWithImpl<$Res, HomeTimerHistoryList>;
  @useResult
  $Res call({String mainColor, DateTime startTm, DateTime endTm});
}

/// @nodoc
class _$HomeTimerHistoryListCopyWithImpl<$Res,
        $Val extends HomeTimerHistoryList>
    implements $HomeTimerHistoryListCopyWith<$Res> {
  _$HomeTimerHistoryListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeTimerHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainColor = null,
    Object? startTm = null,
    Object? endTm = null,
  }) {
    return _then(_value.copyWith(
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      startTm: null == startTm
          ? _value.startTm
          : startTm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTm: null == endTm
          ? _value.endTm
          : endTm // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeTimerHistoryListImplCopyWith<$Res>
    implements $HomeTimerHistoryListCopyWith<$Res> {
  factory _$$HomeTimerHistoryListImplCopyWith(_$HomeTimerHistoryListImpl value,
          $Res Function(_$HomeTimerHistoryListImpl) then) =
      __$$HomeTimerHistoryListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mainColor, DateTime startTm, DateTime endTm});
}

/// @nodoc
class __$$HomeTimerHistoryListImplCopyWithImpl<$Res>
    extends _$HomeTimerHistoryListCopyWithImpl<$Res, _$HomeTimerHistoryListImpl>
    implements _$$HomeTimerHistoryListImplCopyWith<$Res> {
  __$$HomeTimerHistoryListImplCopyWithImpl(_$HomeTimerHistoryListImpl _value,
      $Res Function(_$HomeTimerHistoryListImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeTimerHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mainColor = null,
    Object? startTm = null,
    Object? endTm = null,
  }) {
    return _then(_$HomeTimerHistoryListImpl(
      mainColor: null == mainColor
          ? _value.mainColor
          : mainColor // ignore: cast_nullable_to_non_nullable
              as String,
      startTm: null == startTm
          ? _value.startTm
          : startTm // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endTm: null == endTm
          ? _value.endTm
          : endTm // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HomeTimerHistoryListImpl implements _HomeTimerHistoryList {
  _$HomeTimerHistoryListImpl(
      {required this.mainColor, required this.startTm, required this.endTm});

  factory _$HomeTimerHistoryListImpl.fromJson(Map<String, dynamic> json) =>
      _$$HomeTimerHistoryListImplFromJson(json);

  @override
  final String mainColor;
  @override
  final DateTime startTm;
  @override
  final DateTime endTm;

  @override
  String toString() {
    return 'HomeTimerHistoryList(mainColor: $mainColor, startTm: $startTm, endTm: $endTm)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeTimerHistoryListImpl &&
            (identical(other.mainColor, mainColor) ||
                other.mainColor == mainColor) &&
            (identical(other.startTm, startTm) || other.startTm == startTm) &&
            (identical(other.endTm, endTm) || other.endTm == endTm));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mainColor, startTm, endTm);

  /// Create a copy of HomeTimerHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeTimerHistoryListImplCopyWith<_$HomeTimerHistoryListImpl>
      get copyWith =>
          __$$HomeTimerHistoryListImplCopyWithImpl<_$HomeTimerHistoryListImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HomeTimerHistoryListImplToJson(
      this,
    );
  }
}

abstract class _HomeTimerHistoryList implements HomeTimerHistoryList {
  factory _HomeTimerHistoryList(
      {required final String mainColor,
      required final DateTime startTm,
      required final DateTime endTm}) = _$HomeTimerHistoryListImpl;

  factory _HomeTimerHistoryList.fromJson(Map<String, dynamic> json) =
      _$HomeTimerHistoryListImpl.fromJson;

  @override
  String get mainColor;
  @override
  DateTime get startTm;
  @override
  DateTime get endTm;

  /// Create a copy of HomeTimerHistoryList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeTimerHistoryListImplCopyWith<_$HomeTimerHistoryListImpl>
      get copyWith => throw _privateConstructorUsedError;
}
