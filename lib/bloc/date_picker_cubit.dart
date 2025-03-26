
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DatePickerCubitState extends Equatable {
  final DateTime? selectedDate;

  const DatePickerCubitState({required this.selectedDate});

  @override
  List<Object?> get props => [selectedDate];
}


class DatePickerCubit extends Cubit<DatePickerCubitState> {
  DatePickerCubit() : super(const DatePickerCubitState(selectedDate: null));

  // 데이트 피커에서 선택된 날짜로 변경
  void changeDate(DateTime newDate) {
    emit(DatePickerCubitState(selectedDate: newDate));
  }
}