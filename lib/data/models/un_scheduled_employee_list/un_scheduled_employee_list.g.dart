// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'un_scheduled_employee_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnScheduledEmployeeList _$UnScheduledEmployeeListFromJson(
        Map<String, dynamic> json) =>
    UnScheduledEmployeeList(
      employees: (json['employees'] as List<dynamic>?)
          ?.map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$UnScheduledEmployeeListToJson(
        UnScheduledEmployeeList instance) =>
    <String, dynamic>{
      'employees': instance.employees,
      'status': instance.status,
    };
