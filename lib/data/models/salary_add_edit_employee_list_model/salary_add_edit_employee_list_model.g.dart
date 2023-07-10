// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_add_edit_employee_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaryAddEditEmployeeListModel _$SalaryAddEditEmployeeListModelFromJson(
        Map<String, dynamic> json) =>
    SalaryAddEditEmployeeListModel(
      employees: (json['Employees'] as List<dynamic>?)
              ?.map((e) =>
                  SalaryNotAddedEmployee.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$SalaryAddEditEmployeeListModelToJson(
        SalaryAddEditEmployeeListModel instance) =>
    <String, dynamic>{
      'Employees': instance.employees,
      'status': instance.status,
      'message': instance.message,
    };
