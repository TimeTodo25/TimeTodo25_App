import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_todo/api/home_api.dart';
import 'package:time_todo/bloc/home/home_event.dart';
import 'package:time_todo/bloc/home/home_state.dart';
import 'package:time_todo/dio/api_dio_client.dart';
import 'package:time_todo/model/date_time_converter.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  late HomeApi _api;

  HomeBloc() : super(HomeState(homeDate: DateTime.now(), dDayList: const [], categoryList: const [], timerHistoryList: const [])) {
    _api = HomeApi(ApiClient.dio);

    on<FetchHomeToServer>(_fetchHomeToServer);

  }

  Future<void> _fetchHomeToServer(FetchHomeToServer event, Emitter<HomeState> emit) async {
    try {
      final date = const DateOnlyConverter().toJson(event.homeDate);
      final response = await _api.getHomeList(date);

      emit(state.copyWith(
        homeDate: event.homeDate,
        categoryList: response.categoryList,
        dDayList: response.dDayList,
        timerHistoryList: response.timerHistoryList,
        status: HomeStatus.serverLoaded,
      ));
    } catch (e) {
      emit(state.copyWith(status: HomeStatus.serverFailed));
      print("HomeFetch 에러 $e");
    }
  }
}