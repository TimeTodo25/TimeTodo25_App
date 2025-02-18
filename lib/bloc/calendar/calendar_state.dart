import 'package:equatable/equatable.dart';
import 'package:table_calendar/table_calendar.dart';

enum CalendarStatus { initial, loading, loaded, failed }

class CalendarState extends Equatable {
  final CalendarFormat format;

  const CalendarState({required this.format});

  @override
  List<Object?> get props => [format];

}