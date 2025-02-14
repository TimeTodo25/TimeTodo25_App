import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_retrofit_1/bloc/user/user_event.dart';

abstract class NavigationState extends Equatable {
  @override
  List<Object?> get props => [];
}

class NavigationInitial extends NavigationState {
  NavigationInitial();
}

class NavigationPop extends NavigationState {
  @override
  List<Object?> get props => [];
}

class NavigationPush extends NavigationState {
  final String routeName;
  final Object? arguments;
  NavigationPush(this.routeName, {this.arguments});
}

class NavigationPushReplacement extends NavigationState {
  final String routeName;
  final Object? arguments;
  NavigationPushReplacement(this.routeName, {this.arguments});
}
