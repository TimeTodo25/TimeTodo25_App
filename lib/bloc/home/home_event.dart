import 'package:equatable/equatable.dart';

sealed class HomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class FetchHomeToServer extends HomeEvent {
  final DateTime homeDate;

  FetchHomeToServer({required this.homeDate});
}

class FetchHomeToLocal extends HomeEvent {
  final DateTime homeDate;

  FetchHomeToLocal({required this.homeDate});
}
