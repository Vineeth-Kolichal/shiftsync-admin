// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_employees_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllEmployeesModel _$AllEmployeesModelFromJson(Map<String, dynamic> json) =>
    AllEmployeesModel(
      employees: (json['Employees'] as List<dynamic>?)
          ?.map((e) => Employee.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$AllEmployeesModelToJson(AllEmployeesModel instance) =>
    <String, dynamic>{
      'Employees': instance.employees,
      'status': instance.status,
    };
