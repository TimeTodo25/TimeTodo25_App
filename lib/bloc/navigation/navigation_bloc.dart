import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/bloc/navigation/navigation_event.dart';
import 'package:time_todo/bloc/navigation/navigation_state.dart';
// import 'package:flutter_retrofit_1/bloc/user/user_event.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(NavigationInitial()) {
    on<NavigationEvent>((event, emit) {
      event.when(
        pop: () {
          emit(NavigationPop());
        },
        push: (routeName, arguments) {
          emit(NavigationPush(routeName, arguments: arguments));
        },
        pushReplacement: (routeName, arguments) {
          emit(NavigationPushReplacement(routeName, arguments: arguments));
        },
      );
    });
  }
}
