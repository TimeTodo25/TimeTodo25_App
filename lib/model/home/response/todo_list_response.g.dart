// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoListResponseImpl _$$TodoListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoListResponseImpl(
      intervalDayTodos: (json['intervalDayTodos'] as List<dynamic>)
          .map((e) => IntervalDayTodo.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['categories'] as List<dynamic>)
          .map((e) => CategoryWithTodos.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TodoListResponseImplToJson(
        _$TodoListResponseImpl instance) =>
    <String, dynamic>{
      'intervalDayTodos': instance.intervalDayTodos,
      'categories': instance.categories,
    };
