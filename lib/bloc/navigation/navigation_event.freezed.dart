// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NavigationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function(String routeName, Object? arguments) push,
    required TResult Function(String routeName, Object? arguments)
        pushReplacement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pop,
    TResult? Function(String routeName, Object? arguments)? push,
    TResult? Function(String routeName, Object? arguments)? pushReplacement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function(String routeName, Object? arguments)? push,
    TResult Function(String routeName, Object? arguments)? pushReplacement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pop value) pop,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplacement value) pushReplacement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pop value)? pop,
    TResult? Function(_Push value)? push,
    TResult? Function(_PushReplacement value)? pushReplacement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pop value)? pop,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplacement value)? pushReplacement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationEventCopyWith<$Res> {
  factory $NavigationEventCopyWith(
          NavigationEvent value, $Res Function(NavigationEvent) then) =
      _$NavigationEventCopyWithImpl<$Res, NavigationEvent>;
}

/// @nodoc
class _$NavigationEventCopyWithImpl<$Res, $Val extends NavigationEvent>
    implements $NavigationEventCopyWith<$Res> {
  _$NavigationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PopImplCopyWith<$Res> {
  factory _$$PopImplCopyWith(_$PopImpl value, $Res Function(_$PopImpl) then) =
      __$$PopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PopImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$PopImpl>
    implements _$$PopImplCopyWith<$Res> {
  __$$PopImplCopyWithImpl(_$PopImpl _value, $Res Function(_$PopImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PopImpl implements _Pop {
  const _$PopImpl();

  @override
  String toString() {
    return 'NavigationEvent.pop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PopImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function(String routeName, Object? arguments) push,
    required TResult Function(String routeName, Object? arguments)
        pushReplacement,
  }) {
    return pop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pop,
    TResult? Function(String routeName, Object? arguments)? push,
    TResult? Function(String routeName, Object? arguments)? pushReplacement,
  }) {
    return pop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function(String routeName, Object? arguments)? push,
    TResult Function(String routeName, Object? arguments)? pushReplacement,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pop value) pop,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplacement value) pushReplacement,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pop value)? pop,
    TResult? Function(_Push value)? push,
    TResult? Function(_PushReplacement value)? pushReplacement,
  }) {
    return pop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pop value)? pop,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplacement value)? pushReplacement,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _Pop implements NavigationEvent {
  const factory _Pop() = _$PopImpl;
}

/// @nodoc
abstract class _$$PushImplCopyWith<$Res> {
  factory _$$PushImplCopyWith(
          _$PushImpl value, $Res Function(_$PushImpl) then) =
      __$$PushImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeName, Object? arguments});
}

/// @nodoc
class __$$PushImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$PushImpl>
    implements _$$PushImplCopyWith<$Res> {
  __$$PushImplCopyWithImpl(_$PushImpl _value, $Res Function(_$PushImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? arguments = freezed,
  }) {
    return _then(_$PushImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments ? _value.arguments : arguments,
    ));
  }
}

/// @nodoc

class _$PushImpl implements _Push {
  const _$PushImpl({required this.routeName, this.arguments});

  @override
  final String routeName;
  @override
  final Object? arguments;

  @override
  String toString() {
    return 'NavigationEvent.push(routeName: $routeName, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routeName, const DeepCollectionEquality().hash(arguments));

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushImplCopyWith<_$PushImpl> get copyWith =>
      __$$PushImplCopyWithImpl<_$PushImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function(String routeName, Object? arguments) push,
    required TResult Function(String routeName, Object? arguments)
        pushReplacement,
  }) {
    return push(routeName, arguments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pop,
    TResult? Function(String routeName, Object? arguments)? push,
    TResult? Function(String routeName, Object? arguments)? pushReplacement,
  }) {
    return push?.call(routeName, arguments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function(String routeName, Object? arguments)? push,
    TResult Function(String routeName, Object? arguments)? pushReplacement,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(routeName, arguments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pop value) pop,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplacement value) pushReplacement,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pop value)? pop,
    TResult? Function(_Push value)? push,
    TResult? Function(_PushReplacement value)? pushReplacement,
  }) {
    return push?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pop value)? pop,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplacement value)? pushReplacement,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _Push implements NavigationEvent {
  const factory _Push(
      {required final String routeName, final Object? arguments}) = _$PushImpl;

  String get routeName;
  Object? get arguments;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushImplCopyWith<_$PushImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PushReplacementImplCopyWith<$Res> {
  factory _$$PushReplacementImplCopyWith(_$PushReplacementImpl value,
          $Res Function(_$PushReplacementImpl) then) =
      __$$PushReplacementImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String routeName, Object? arguments});
}

/// @nodoc
class __$$PushReplacementImplCopyWithImpl<$Res>
    extends _$NavigationEventCopyWithImpl<$Res, _$PushReplacementImpl>
    implements _$$PushReplacementImplCopyWith<$Res> {
  __$$PushReplacementImplCopyWithImpl(
      _$PushReplacementImpl _value, $Res Function(_$PushReplacementImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? routeName = null,
    Object? arguments = freezed,
  }) {
    return _then(_$PushReplacementImpl(
      routeName: null == routeName
          ? _value.routeName
          : routeName // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: freezed == arguments ? _value.arguments : arguments,
    ));
  }
}

/// @nodoc

class _$PushReplacementImpl implements _PushReplacement {
  const _$PushReplacementImpl({required this.routeName, this.arguments});

  @override
  final String routeName;
  @override
  final Object? arguments;

  @override
  String toString() {
    return 'NavigationEvent.pushReplacement(routeName: $routeName, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PushReplacementImpl &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, routeName, const DeepCollectionEquality().hash(arguments));

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PushReplacementImplCopyWith<_$PushReplacementImpl> get copyWith =>
      __$$PushReplacementImplCopyWithImpl<_$PushReplacementImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pop,
    required TResult Function(String routeName, Object? arguments) push,
    required TResult Function(String routeName, Object? arguments)
        pushReplacement,
  }) {
    return pushReplacement(routeName, arguments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pop,
    TResult? Function(String routeName, Object? arguments)? push,
    TResult? Function(String routeName, Object? arguments)? pushReplacement,
  }) {
    return pushReplacement?.call(routeName, arguments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pop,
    TResult Function(String routeName, Object? arguments)? push,
    TResult Function(String routeName, Object? arguments)? pushReplacement,
    required TResult orElse(),
  }) {
    if (pushReplacement != null) {
      return pushReplacement(routeName, arguments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Pop value) pop,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplacement value) pushReplacement,
  }) {
    return pushReplacement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Pop value)? pop,
    TResult? Function(_Push value)? push,
    TResult? Function(_PushReplacement value)? pushReplacement,
  }) {
    return pushReplacement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Pop value)? pop,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplacement value)? pushReplacement,
    required TResult orElse(),
  }) {
    if (pushReplacement != null) {
      return pushReplacement(this);
    }
    return orElse();
  }
}

abstract class _PushReplacement implements NavigationEvent {
  const factory _PushReplacement(
      {required final String routeName,
      final Object? arguments}) = _$PushReplacementImpl;

  String get routeName;
  Object? get arguments;

  /// Create a copy of NavigationEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PushReplacementImplCopyWith<_$PushReplacementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
