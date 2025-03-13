import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/timer/all_timer/all_timer_bloc.dart';

const observedBlocs = { AllTimerBloc };  // 관찰할 블록들

class TimetodoObserver extends BlocObserver {
  bool _shouldObserve(BlocBase bloc) => observedBlocs.contains(bloc.runtimeType);

  @override
  void onEvent(Bloc bloc, Object? event) {
    if (_shouldObserve(bloc)) {
      print('\n onEvent: ${bloc.runtimeType}, Event: $event');
    }
    super.onEvent(bloc, event);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    if (_shouldObserve(bloc)) {
      print('\n onChange: ${bloc.runtimeType}, Change: $change');
    }
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    if (_shouldObserve(bloc)) {
      print('\n onTransition: ${bloc.runtimeType}, Transition: $transition');
    }
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    if (_shouldObserve(bloc)) {
      print('\n onError: ${bloc.runtimeType}, Error: $error');
    }
    super.onError(bloc, error, stackTrace);
  }
}