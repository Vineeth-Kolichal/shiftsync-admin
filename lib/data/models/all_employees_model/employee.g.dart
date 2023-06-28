// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Employee _$EmployeeFromJson(Map<String, dynamic> json) => Employee(
      id: json['id'] as int?,
      empid: json['empid'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as int?,
      gender: json['gender'] as String?,
      dateofbirth: json['dateofbirth'] as String?,
      designation: json['designation'] as String?,
    );

Map<String, dynamic> _$EmployeeToJson(Employee instance) => <String, dynamic>{
      'id': instance.id,
      'empid': instance.empid,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'dateofbirth': instance.dateofbirth,
      'designation': instance.designation,
    };
