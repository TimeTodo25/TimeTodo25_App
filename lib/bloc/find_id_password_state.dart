import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FindIdBloc extends Bloc<FindIdEvent, FindIdState> {
  FindIdBloc() : super(FindIdInitialState()) {
    on<FindIdNextEvent>((event, emit) {
      if (state is FindIdInitialState) {
        emit(FindIdSecondState());
      }
      else if (state is FindIdSecondState) {
        emit(FindIdThirdState());
      }
    });

    on<FindIdFailEvent>((event, emit) {
      emit(FindIdFailState());
    });

    on<FindIdSuccessEvent>((event, emit) {
      emit(FindIdSuccessState());
    });
  }
}

class FindPasswordBloc extends Bloc<FindPasswordEvent,FindPasswordState> {
  FindPasswordBloc() : super(FindPasswordInitialState()) {
    on<FindPasswordNextEvent>((event, emit) {
      if (state is FindPasswordInitialState) {
        emit(FindPasswordSecondState());
      }
      else if (state is FindPasswordSecondState) {
        emit(FindPasswordThirdState());
      }
    });

    on<FindPasswordFailEvent>((event, emit) {
      emit(FindPasswordFailState());
    });

    on<FindPasswordSuccessEvent>((event, emit) {
      emit(FindPasswordSuccessState());
    });
  }
}

class FindPasswordEvent extends Equatable{

  @override
  List<Object?> get props => [];
}

class FindPasswordState extends Equatable {

  @override
  List<Object> get props => [];
}

class FindIdEvent extends Equatable{

  @override
  List<Object?> get props => [];
}

class FindIdState extends Equatable {

  @override
  List<Object> get props => [];
}

class FindIdInitialState extends FindIdState {}

class FindIdSecondState extends FindIdState {}

class FindIdThirdState extends FindIdState {}

class FindIdSuccessState extends FindIdState {}

class FindIdFailState extends FindIdState {}

class FindIdNextEvent extends FindIdEvent {}

class FindIdFailEvent extends FindIdEvent {}

class FindIdSuccessEvent extends FindIdEvent {}

class FindPasswordInitialState extends FindPasswordState {}

class FindPasswordSecondState extends FindPasswordState {}

class FindPasswordThirdState extends FindPasswordState {}

class FindPasswordSuccessState extends FindPasswordState {}

class FindPasswordFailState extends FindPasswordState {}

class FindPasswordNextEvent extends FindPasswordEvent {}

class FindPasswordFailEvent extends FindPasswordEvent {}

class FindPasswordSuccessEvent extends FindPasswordEvent {}