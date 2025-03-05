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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$AllAgreeTermEventImpl
    with DiagnosticableTreeMixin
    implements _AllAgreeTermEvent {
  const _$AllAgreeTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.allAgreeTermEvent(isAgreed: $isAgreed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.allAgreeTermEvent'))
      ..add(DiagnosticsProperty('isAgreed', isAgreed));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$ServiceTermEventImpl
    with DiagnosticableTreeMixin
    implements _ServiceTermEvent {
  const _$ServiceTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.serviceTermEvent(isAgreed: $isAgreed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.serviceTermEvent'))
      ..add(DiagnosticsProperty('isAgreed', isAgreed));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$CollectionTermEventImpl
    with DiagnosticableTreeMixin
    implements _CollectionTermEvent {
  const _$CollectionTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.collectionTermEvent(isAgreed: $isAgreed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.collectionTermEvent'))
      ..add(DiagnosticsProperty('isAgreed', isAgreed));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$MarketingTermEventImpl
    with DiagnosticableTreeMixin
    implements _MarketingTermEvent {
  const _$MarketingTermEventImpl(this.isAgreed);

  @override
  final bool isAgreed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.marketingTermEvent(isAgreed: $isAgreed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.marketingTermEvent'))
      ..add(DiagnosticsProperty('isAgreed', isAgreed));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$TermCompletEventImpl
    with DiagnosticableTreeMixin
    implements _TermCompletEvent {
  const _$TermCompletEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.termCompletEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'JoinEvent.termCompletEvent'));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$SendCertificationMailEventImpl
    with DiagnosticableTreeMixin
    implements _SendCertificationMailEvent {
  const _$SendCertificationMailEventImpl(this.email);

  @override
  final String email;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.sendCertificationMailEvent(email: $email)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.sendCertificationMailEvent'))
      ..add(DiagnosticsProperty('email', email));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$StartTimerEventImpl
    with DiagnosticableTreeMixin
    implements _StartTimerEvent {
  const _$StartTimerEventImpl(this.durationInSeconds);

  @override
  final int durationInSeconds;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.startTimerEvent(durationInSeconds: $durationInSeconds)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.startTimerEvent'))
      ..add(DiagnosticsProperty('durationInSeconds', durationInSeconds));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

class _$CertifyCodeEventImpl
    with DiagnosticableTreeMixin
    implements _CertifyCodeEvent {
  const _$CertifyCodeEventImpl(this.email, this.code);

  @override
  final String email;
  @override
  final String code;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.certifyCodeEvent(email: $email, code: $code)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.certifyCodeEvent'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('code', code));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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
abstract class _$$CodeFailEventImplCopyWith<$Res> {
  factory _$$CodeFailEventImplCopyWith(
          _$CodeFailEventImpl value, $Res Function(_$CodeFailEventImpl) then) =
      __$$CodeFailEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeFailEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$CodeFailEventImpl>
    implements _$$CodeFailEventImplCopyWith<$Res> {
  __$$CodeFailEventImplCopyWithImpl(
      _$CodeFailEventImpl _value, $Res Function(_$CodeFailEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CodeFailEventImpl
    with DiagnosticableTreeMixin
    implements _CodeFailEvent {
  const _$CodeFailEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.codeFailEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'JoinEvent.codeFailEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeFailEventImpl);
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
  }) {
    return codeFailEvent();
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
  }) {
    return codeFailEvent?.call();
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
    required TResult orElse(),
  }) {
    if (codeFailEvent != null) {
      return codeFailEvent();
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
  }) {
    return codeFailEvent(this);
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
  }) {
    return codeFailEvent?.call(this);
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
    required TResult orElse(),
  }) {
    if (codeFailEvent != null) {
      return codeFailEvent(this);
    }
    return orElse();
  }
}

abstract class _CodeFailEvent implements JoinEvent {
  const factory _CodeFailEvent() = _$CodeFailEventImpl;
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

class _$IdOverlapCheckEventImpl
    with DiagnosticableTreeMixin
    implements _IdOverlapCheckEvent {
  const _$IdOverlapCheckEventImpl(this.id);

  @override
  final dynamic id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.idOverlapCheckEvent(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.idOverlapCheckEvent'))
      ..add(DiagnosticsProperty('id', id));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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
abstract class _$$changeUserIdEventImplCopyWith<$Res> {
  factory _$$changeUserIdEventImplCopyWith(_$changeUserIdEventImpl value,
          $Res Function(_$changeUserIdEventImpl) then) =
      __$$changeUserIdEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userId});
}

/// @nodoc
class __$$changeUserIdEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$changeUserIdEventImpl>
    implements _$$changeUserIdEventImplCopyWith<$Res> {
  __$$changeUserIdEventImplCopyWithImpl(_$changeUserIdEventImpl _value,
      $Res Function(_$changeUserIdEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
  }) {
    return _then(_$changeUserIdEventImpl(
      null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$changeUserIdEventImpl
    with DiagnosticableTreeMixin
    implements changeUserIdEvent {
  const _$changeUserIdEventImpl(this.userId);

  @override
  final String userId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.changeUserIdEvent(userId: $userId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.changeUserIdEvent'))
      ..add(DiagnosticsProperty('userId', userId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$changeUserIdEventImpl &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$changeUserIdEventImplCopyWith<_$changeUserIdEventImpl> get copyWith =>
      __$$changeUserIdEventImplCopyWithImpl<_$changeUserIdEventImpl>(
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
  }) {
    return changeUserIdEvent(userId);
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
  }) {
    return changeUserIdEvent?.call(userId);
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
    required TResult orElse(),
  }) {
    if (changeUserIdEvent != null) {
      return changeUserIdEvent(userId);
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
  }) {
    return changeUserIdEvent(this);
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
  }) {
    return changeUserIdEvent?.call(this);
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
    required TResult orElse(),
  }) {
    if (changeUserIdEvent != null) {
      return changeUserIdEvent(this);
    }
    return orElse();
  }
}

abstract class changeUserIdEvent implements JoinEvent {
  const factory changeUserIdEvent(final String userId) =
      _$changeUserIdEventImpl;

  String get userId;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$changeUserIdEventImplCopyWith<_$changeUserIdEventImpl> get copyWith =>
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

class _$JoinUserEventImpl
    with DiagnosticableTreeMixin
    implements _JoinUserEvent {
  const _$JoinUserEventImpl(this.user);

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.joinUserEvent(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.joinUserEvent'))
      ..add(DiagnosticsProperty('user', user));
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
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

/// @nodoc
abstract class _$$ValidationCheckEventImplCopyWith<$Res> {
  factory _$$ValidationCheckEventImplCopyWith(_$ValidationCheckEventImpl value,
          $Res Function(_$ValidationCheckEventImpl) then) =
      __$$ValidationCheckEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String type, String value});
}

/// @nodoc
class __$$ValidationCheckEventImplCopyWithImpl<$Res>
    extends _$JoinEventCopyWithImpl<$Res, _$ValidationCheckEventImpl>
    implements _$$ValidationCheckEventImplCopyWith<$Res> {
  __$$ValidationCheckEventImplCopyWithImpl(_$ValidationCheckEventImpl _value,
      $Res Function(_$ValidationCheckEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? value = null,
  }) {
    return _then(_$ValidationCheckEventImpl(
      null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ValidationCheckEventImpl
    with DiagnosticableTreeMixin
    implements _ValidationCheckEvent {
  const _$ValidationCheckEventImpl(this.type, this.value);

  @override
  final String type;
  @override
  final String value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'JoinEvent.validationCheck(type: $type, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'JoinEvent.validationCheck'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationCheckEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, value);

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationCheckEventImplCopyWith<_$ValidationCheckEventImpl>
      get copyWith =>
          __$$ValidationCheckEventImplCopyWithImpl<_$ValidationCheckEventImpl>(
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
    required TResult Function() codeFailEvent,
    required TResult Function(dynamic id) idOverlapCheckEvent,
    required TResult Function(String userId) changeUserIdEvent,
    required TResult Function(User user) joinUserEvent,
    required TResult Function(String type, String value) validationCheck,
  }) {
    return validationCheck(type, value);
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
    TResult? Function()? codeFailEvent,
    TResult? Function(dynamic id)? idOverlapCheckEvent,
    TResult? Function(String userId)? changeUserIdEvent,
    TResult? Function(User user)? joinUserEvent,
    TResult? Function(String type, String value)? validationCheck,
  }) {
    return validationCheck?.call(type, value);
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
    TResult Function()? codeFailEvent,
    TResult Function(dynamic id)? idOverlapCheckEvent,
    TResult Function(String userId)? changeUserIdEvent,
    TResult Function(User user)? joinUserEvent,
    TResult Function(String type, String value)? validationCheck,
    required TResult orElse(),
  }) {
    if (validationCheck != null) {
      return validationCheck(type, value);
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
    required TResult Function(_CodeFailEvent value) codeFailEvent,
    required TResult Function(_IdOverlapCheckEvent value) idOverlapCheckEvent,
    required TResult Function(changeUserIdEvent value) changeUserIdEvent,
    required TResult Function(_JoinUserEvent value) joinUserEvent,
    required TResult Function(_ValidationCheckEvent value) validationCheck,
  }) {
    return validationCheck(this);
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
    TResult? Function(_CodeFailEvent value)? codeFailEvent,
    TResult? Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult? Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult? Function(_JoinUserEvent value)? joinUserEvent,
    TResult? Function(_ValidationCheckEvent value)? validationCheck,
  }) {
    return validationCheck?.call(this);
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
    TResult Function(_CodeFailEvent value)? codeFailEvent,
    TResult Function(_IdOverlapCheckEvent value)? idOverlapCheckEvent,
    TResult Function(changeUserIdEvent value)? changeUserIdEvent,
    TResult Function(_JoinUserEvent value)? joinUserEvent,
    TResult Function(_ValidationCheckEvent value)? validationCheck,
    required TResult orElse(),
  }) {
    if (validationCheck != null) {
      return validationCheck(this);
    }
    return orElse();
  }
}

abstract class _ValidationCheckEvent implements JoinEvent {
  const factory _ValidationCheckEvent(final String type, final String value) =
      _$ValidationCheckEventImpl;

  String get type;
  String get value;

  /// Create a copy of JoinEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ValidationCheckEventImplCopyWith<_$ValidationCheckEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
