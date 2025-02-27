import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_event.freezed.dart';

@freezed
class NavigationEvent with _$NavigationEvent {
  const factory NavigationEvent.pop() = _Pop;
  const factory NavigationEvent.push({
    required String routeName,
    Object? arguments,
  }) = _Push;
  const factory NavigationEvent.pushReplacement({
    required String routeName,
    Object? arguments,
  }) = _PushReplacement;
}
