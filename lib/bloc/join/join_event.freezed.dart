// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'join_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$JoinEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JoinEventCopyWith<$Res> {
  factory $JoinEventCopyWith(JoinEvent value, $Res Function(JoinEvent) then) =
      _$JoinEventCopyWithImpl<$Res, JoinEvent>;
}

/// @nodoc
class _$JoinEventCopyWithImpl<$Res, $Val extends JoinEvent>
    implements $JoinEventCopyWith<$Res> {
  _$JoinEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AllAgreeTermEventImplCopyWith<$Res> {
  factory _$$AllAgreeTermEventImplCopyWith(_$AllAgreeTermEventImpl value,
          $Res Function(_$AllAgreeTermEventImpl) then) =
      __$$AllAgreeTermEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAgreed});
}

/// @nodoc
class __$$AllAgreeTermEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$AllAgreeTermEventImpl>
    implements _$$AllAgreeTermEventImplCopyWith<$Res> {
  __$$AllAgreeTermEventImplCopyWithImpl(_$AllAgreeTermEventImpl _value,
      $Res Function(_$AllAgreeTermEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAgreed = null,
  }) {
    return _then(_$AllAgreeTermEventImpl(
      null == isAgreed
          ? _value.isAgreed
          : isAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AllAgreeTermEventImpl implements _AllAgreeTermEvent {
  const _$AllAgreeTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString() {
    return 'JoinEvent.allAgreeTermEvent(isAgreed: $isAgreed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllAgreeTermEventImpl &&
            (identical(other.isAgreed, isAgreed) ||
                other.isAgreed == isAgreed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgreed);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AllAgreeTermEventImplCopyWith<_$AllAgreeTermEventImpl> get copyWith =>
      __$$AllAgreeTermEventImplCopyWithImpl<_$AllAgreeTermEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return allAgreeTermEvent(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return allAgreeTermEvent?.call(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (allAgreeTermEvent != null) {
      return allAgreeTermEvent(isAgreed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return allAgreeTermEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return allAgreeTermEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (allAgreeTermEvent != null) {
      return allAgreeTermEvent(this);
    }
    return orElse();
  }
}

abstract class _AllAgreeTermEvent implements JoinEvent {
  const factory _AllAgreeTermEvent(final bool isAgreed) =
      _$AllAgreeTermEventImpl;

  bool get isAgreed;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AllAgreeTermEventImplCopyWith<_$AllAgreeTermEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ServiceTermEventImplCopyWith<$Res> {
  factory _$$ServiceTermEventImplCopyWith(_$ServiceTermEventImpl value,
          $Res Function(_$ServiceTermEventImpl) then) =
      __$$ServiceTermEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAgreed});
}

/// @nodoc
class __$$ServiceTermEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$ServiceTermEventImpl>
    implements _$$ServiceTermEventImplCopyWith<$Res> {
  __$$ServiceTermEventImplCopyWithImpl(_$ServiceTermEventImpl _value,
      $Res Function(_$ServiceTermEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAgreed = null,
  }) {
    return _then(_$ServiceTermEventImpl(
      null == isAgreed
          ? _value.isAgreed
          : isAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ServiceTermEventImpl implements _ServiceTermEvent {
  const _$ServiceTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString() {
    return 'JoinEvent.serviceTermEvent(isAgreed: $isAgreed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTermEventImpl &&
            (identical(other.isAgreed, isAgreed) ||
                other.isAgreed == isAgreed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgreed);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTermEventImplCopyWith<_$ServiceTermEventImpl> get copyWith =>
      __$$ServiceTermEventImplCopyWithImpl<_$ServiceTermEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return serviceTermEvent(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return serviceTermEvent?.call(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (serviceTermEvent != null) {
      return serviceTermEvent(isAgreed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return serviceTermEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return serviceTermEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (serviceTermEvent != null) {
      return serviceTermEvent(this);
    }
    return orElse();
  }
}

abstract class _ServiceTermEvent implements JoinEvent {
  const factory _ServiceTermEvent(final bool isAgreed) = _$ServiceTermEventImpl;

  bool get isAgreed;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ServiceTermEventImplCopyWith<_$ServiceTermEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CollectionTermEventImplCopyWith<$Res> {
  factory _$$CollectionTermEventImplCopyWith(_$CollectionTermEventImpl value,
          $Res Function(_$CollectionTermEventImpl) then) =
      __$$CollectionTermEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAgreed});
}

/// @nodoc
class __$$CollectionTermEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$CollectionTermEventImpl>
    implements _$$CollectionTermEventImplCopyWith<$Res> {
  __$$CollectionTermEventImplCopyWithImpl(_$CollectionTermEventImpl _value,
      $Res Function(_$CollectionTermEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAgreed = null,
  }) {
    return _then(_$CollectionTermEventImpl(
      null == isAgreed
          ? _value.isAgreed
          : isAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CollectionTermEventImpl implements _CollectionTermEvent {
  const _$CollectionTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString() {
    return 'JoinEvent.collectionTermEvent(isAgreed: $isAgreed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionTermEventImpl &&
            (identical(other.isAgreed, isAgreed) ||
                other.isAgreed == isAgreed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgreed);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionTermEventImplCopyWith<_$CollectionTermEventImpl> get copyWith =>
      __$$CollectionTermEventImplCopyWithImpl<_$CollectionTermEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return collectionTermEvent(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return collectionTermEvent?.call(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (collectionTermEvent != null) {
      return collectionTermEvent(isAgreed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return collectionTermEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return collectionTermEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (collectionTermEvent != null) {
      return collectionTermEvent(this);
    }
    return orElse();
  }
}

abstract class _CollectionTermEvent implements JoinEvent {
  const factory _CollectionTermEvent(final bool isAgreed) =
      _$CollectionTermEventImpl;

  bool get isAgreed;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionTermEventImplCopyWith<_$CollectionTermEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MarketingTermEventImplCopyWith<$Res> {
  factory _$$MarketingTermEventImplCopyWith(_$MarketingTermEventImpl value,
          $Res Function(_$MarketingTermEventImpl) then) =
      __$$MarketingTermEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAgreed});
}

/// @nodoc
class __$$MarketingTermEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$MarketingTermEventImpl>
    implements _$$MarketingTermEventImplCopyWith<$Res> {
  __$$MarketingTermEventImplCopyWithImpl(_$MarketingTermEventImpl _value,
      $Res Function(_$MarketingTermEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAgreed = null,
  }) {
    return _then(_$MarketingTermEventImpl(
      null == isAgreed
          ? _value.isAgreed
          : isAgreed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MarketingTermEventImpl implements _MarketingTermEvent {
  const _$MarketingTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString() {
    return 'JoinEvent.marketingTermEvent(isAgreed: $isAgreed)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketingTermEventImpl &&
            (identical(other.isAgreed, isAgreed) ||
                other.isAgreed == isAgreed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAgreed);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketingTermEventImplCopyWith<_$MarketingTermEventImpl> get copyWith =>
      __$$MarketingTermEventImplCopyWithImpl<_$MarketingTermEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return marketingTermEvent(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return marketingTermEvent?.call(isAgreed);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (marketingTermEvent != null) {
      return marketingTermEvent(isAgreed);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return marketingTermEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return marketingTermEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (marketingTermEvent != null) {
      return marketingTermEvent(this);
    }
    return orElse();
  }
}

abstract class _MarketingTermEvent implements JoinEvent {
  const factory _MarketingTermEvent(final bool isAgreed) =
      _$MarketingTermEventImpl;

  bool get isAgreed;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketingTermEventImplCopyWith<_$MarketingTermEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TermCompletEventImplCopyWith<$Res> {
  factory _$$TermCompletEventImplCopyWith(_$TermCompletEventImpl value,
          $Res Function(_$TermCompletEventImpl) then) =
      __$$TermCompletEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TermCompletEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$TermCompletEventImpl>
    implements _$$TermCompletEventImplCopyWith<$Res> {
  __$$TermCompletEventImplCopyWithImpl(_$TermCompletEventImpl _value,
      $Res Function(_$TermCompletEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TermCompletEventImpl implements _TermCompletEvent {
  const _$TermCompletEventImpl();

  @override
  String toString() {
    return 'JoinEvent.termCompletEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TermCompletEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return termCompletEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return termCompletEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (termCompletEvent != null) {
      return termCompletEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return termCompletEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return termCompletEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (termCompletEvent != null) {
      return termCompletEvent(this);
    }
    return orElse();
  }
}

abstract class _TermCompletEvent implements JoinEvent {
  const factory _TermCompletEvent() = _$TermCompletEventImpl;
}

/// @nodoc
abstract class _$$SendCertificationMailEventImplCopyWith<$Res> {
  factory _$$SendCertificationMailEventImplCopyWith(
          _$SendCertificationMailEventImpl value,
          $Res Function(_$SendCertificationMailEventImpl) then) =
      __$$SendCertificationMailEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendCertificationMailEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$SendCertificationMailEventImpl>
    implements _$$SendCertificationMailEventImplCopyWith<$Res> {
  __$$SendCertificationMailEventImplCopyWithImpl(
      _$SendCertificationMailEventImpl _value,
      $Res Function(_$SendCertificationMailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendCertificationMailEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCertificationMailEventImpl implements _SendCertificationMailEvent {
  const _$SendCertificationMailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'JoinEvent.sendCertificationMailEvent(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCertificationMailEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCertificationMailEventImplCopyWith<_$SendCertificationMailEventImpl>
      get copyWith => __$$SendCertificationMailEventImplCopyWithImpl<
          _$SendCertificationMailEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return sendCertificationMailEvent(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return sendCertificationMailEvent?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (sendCertificationMailEvent != null) {
      return sendCertificationMailEvent(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return sendCertificationMailEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return sendCertificationMailEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (sendCertificationMailEvent != null) {
      return sendCertificationMailEvent(this);
    }
    return orElse();
  }
}

abstract class _SendCertificationMailEvent implements JoinEvent {
  const factory _SendCertificationMailEvent(final String email) =
      _$SendCertificationMailEventImpl;

  String get email;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCertificationMailEventImplCopyWith<_$SendCertificationMailEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StartTimerEventImplCopyWith<$Res> {
  factory _$$StartTimerEventImplCopyWith(_$StartTimerEventImpl value,
          $Res Function(_$StartTimerEventImpl) then) =
      __$$StartTimerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int durationInSeconds});
}

/// @nodoc
class __$$StartTimerEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$StartTimerEventImpl>
    implements _$$StartTimerEventImplCopyWith<$Res> {
  __$$StartTimerEventImplCopyWithImpl(
      _$StartTimerEventImpl _value, $Res Function(_$StartTimerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? durationInSeconds = null,
  }) {
    return _then(_$StartTimerEventImpl(
      null == durationInSeconds
          ? _value.durationInSeconds
          : durationInSeconds // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartTimerEventImpl implements _StartTimerEvent {
  const _$StartTimerEventImpl(this.durationInSeconds);

  @override
  final int durationInSeconds;

  @override
  String toString() {
    return 'JoinEvent.startTimerEvent(durationInSeconds: $durationInSeconds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartTimerEventImpl &&
            (identical(other.durationInSeconds, durationInSeconds) ||
                other.durationInSeconds == durationInSeconds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, durationInSeconds);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartTimerEventImplCopyWith<_$StartTimerEventImpl> get copyWith =>
      __$$StartTimerEventImplCopyWithImpl<_$StartTimerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return startTimerEvent(durationInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return startTimerEvent?.call(durationInSeconds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (startTimerEvent != null) {
      return startTimerEvent(durationInSeconds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return startTimerEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return startTimerEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (startTimerEvent != null) {
      return startTimerEvent(this);
    }
    return orElse();
  }
}

abstract class _StartTimerEvent implements JoinEvent {
  const factory _StartTimerEvent(final int durationInSeconds) =
      _$StartTimerEventImpl;

  int get durationInSeconds;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartTimerEventImplCopyWith<_$StartTimerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CertifyCodeEventImplCopyWith<$Res> {
  factory _$$CertifyCodeEventImplCopyWith(_$CertifyCodeEventImpl value,
          $Res Function(_$CertifyCodeEventImpl) then) =
      __$$CertifyCodeEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String code});
}

/// @nodoc
class __$$CertifyCodeEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$CertifyCodeEventImpl>
    implements _$$CertifyCodeEventImplCopyWith<$Res> {
  __$$CertifyCodeEventImplCopyWithImpl(_$CertifyCodeEventImpl _value,
      $Res Function(_$CertifyCodeEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? code = null,
  }) {
    return _then(_$CertifyCodeEventImpl(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CertifyCodeEventImpl implements _CertifyCodeEvent {
  const _$CertifyCodeEventImpl(this.email, this.code);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString() {
    return 'JoinEvent.certifyCodeEvent(email: $email, code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CertifyCodeEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, code);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CertifyCodeEventImplCopyWith<_$CertifyCodeEventImpl> get copyWith =>
      __$$CertifyCodeEventImplCopyWithImpl<_$CertifyCodeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return certifyCodeEvent(email, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return certifyCodeEvent?.call(email, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (certifyCodeEvent != null) {
      return certifyCodeEvent(email, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return certifyCodeEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return certifyCodeEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (certifyCodeEvent != null) {
      return certifyCodeEvent(this);
    }
    return orElse();
  }
}

abstract class _CertifyCodeEvent implements JoinEvent {
  const factory _CertifyCodeEvent(final String email, final String code) =
      _$CertifyCodeEventImpl;

  String get email;
  String get code;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CertifyCodeEventImplCopyWith<_$CertifyCodeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IdOverlapCheckEventImplCopyWith<$Res> {
  factory _$$IdOverlapCheckEventImplCopyWith(_$IdOverlapCheckEventImpl value,
          $Res Function(_$IdOverlapCheckEventImpl) then) =
      __$$IdOverlapCheckEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic id});
}

/// @nodoc
class __$$IdOverlapCheckEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$IdOverlapCheckEventImpl>
    implements _$$IdOverlapCheckEventImplCopyWith<$Res> {
  __$$IdOverlapCheckEventImplCopyWithImpl(_$IdOverlapCheckEventImpl _value,
      $Res Function(_$IdOverlapCheckEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$IdOverlapCheckEventImpl(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$IdOverlapCheckEventImpl implements _IdOverlapCheckEvent {
  const _$IdOverlapCheckEventImpl(this.id);

  @override
  final dynamic id;

  @override
  String toString() {
    return 'JoinEvent.idOverlapCheckEvent(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdOverlapCheckEventImpl &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdOverlapCheckEventImplCopyWith<_$IdOverlapCheckEventImpl> get copyWith =>
      __$$IdOverlapCheckEventImplCopyWithImpl<_$IdOverlapCheckEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return idOverlapCheckEvent(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return idOverlapCheckEvent?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (idOverlapCheckEvent != null) {
      return idOverlapCheckEvent(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return idOverlapCheckEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return idOverlapCheckEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (idOverlapCheckEvent != null) {
      return idOverlapCheckEvent(this);
    }
    return orElse();
  }
}

abstract class _IdOverlapCheckEvent implements JoinEvent {
  const factory _IdOverlapCheckEvent(final dynamic id) =
      _$IdOverlapCheckEventImpl;

  dynamic get id;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdOverlapCheckEventImplCopyWith<_$IdOverlapCheckEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$JoinUserEventImplCopyWith<$Res> {
  factory _$$JoinUserEventImplCopyWith(
          _$JoinUserEventImpl value, $Res Function(_$JoinUserEventImpl) then) =
      __$$JoinUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$JoinUserEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$JoinUserEventImpl>
    implements _$$JoinUserEventImplCopyWith<$Res> {
  __$$JoinUserEventImplCopyWithImpl(
      _$JoinUserEventImpl _value, $Res Function(_$JoinUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$JoinUserEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$JoinUserEventImpl implements _JoinUserEvent {
  const _$JoinUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString() {
    return 'JoinEvent.joinUserEvent(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JoinUserEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JoinUserEventImplCopyWith<_$JoinUserEventImpl> get copyWith =>
      __$$JoinUserEventImplCopyWithImpl<_$JoinUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAgreed) allAgreeTermEvent,
    required TResult Function(bool isAgreed) serviceTermEvent,
    required TResult Function(bool isAgreed) collectionTermEvent,
    required TResult Function(bool isAgreed) marketingTermEvent,
    required TResult Function() termCompletEvent,
    required TResult Function(String email) sendCertificationMailEvent,
    required TResult Function(int durationInSeconds) startTimerEvent,
    required TResult Function(String email, String code) certifyCodeEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(User user) joinUserEvent,
  }) {
    return joinUserEvent(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isAgreed)? allAgreeTermEvent,
    TResult? Function(bool isAgreed)? serviceTermEvent,
    TResult? Function(bool isAgreed)? collectionTermEvent,
    TResult? Function(bool isAgreed)? marketingTermEvent,
    TResult? Function()? termCompletEvent,
    TResult? Function(String email)? sendCertificationMailEvent,
    TResult? Function(int durationInSeconds)? startTimerEvent,
    TResult? Function(String email, String code)? certifyCodeEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(User user)? joinUserEvent,
  }) {
    return joinUserEvent?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAgreed)? allAgreeTermEvent,
    TResult Function(bool isAgreed)? serviceTermEvent,
    TResult Function(bool isAgreed)? collectionTermEvent,
    TResult Function(bool isAgreed)? marketingTermEvent,
    TResult Function()? termCompletEvent,
    TResult Function(String email)? sendCertificationMailEvent,
    TResult Function(int durationInSeconds)? startTimerEvent,
    TResult Function(String email, String code)? certifyCodeEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(User user)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (joinUserEvent != null) {
      return joinUserEvent(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AllAgreeTermEvent value) allAgreeTermEvent,
    required TResult Function(_ServiceTermEvent value) serviceTermEvent,
    required TResult Function(_CollectionTermEvent value) collectionTermEvent,
    required TResult Function(_MarketingTermEvent value) marketingTermEvent,
    required TResult Function(_TermCompletEvent value) termCompletEvent,
    required TResult Function(_SendCertificationMailEvent value)
        sendCertificationMailEvent,
    required TResult Function(_StartTimerEvent value) startTimerEvent,
    required TResult Function(_CertifyCodeEvent value) certifyCodeEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
  }) {
    return joinUserEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult? Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult? Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult? Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult? Function(_TermCompletEvent value)? termCompletEvent,
    TResult? Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult? Function(_StartTimerEvent value)? startTimerEvent,
    TResult? Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
  }) {
    return joinUserEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AllAgreeTermEvent value)? allAgreeTermEvent,
    TResult Function(_ServiceTermEvent value)? serviceTermEvent,
    TResult Function(_CollectionTermEvent value)? collectionTermEvent,
    TResult Function(_MarketingTermEvent value)? marketingTermEvent,
    TResult Function(_TermCompletEvent value)? termCompletEvent,
    TResult Function(_SendCertificationMailEvent value)?
        sendCertificationMailEvent,
    TResult Function(_StartTimerEvent value)? startTimerEvent,
    TResult Function(_CertifyCodeEvent value)? certifyCodeEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    required TResult orElse(),
  }) {
    if (joinUserEvent != null) {
      return joinUserEvent(this);
    }
    return orElse();
  }
}

abstract class _JoinUserEvent implements JoinEvent {
  const factory _JoinUserEvent(final User user) = _$JoinUserEventImpl;

  User get user;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JoinUserEventImplCopyWith<_$JoinUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
