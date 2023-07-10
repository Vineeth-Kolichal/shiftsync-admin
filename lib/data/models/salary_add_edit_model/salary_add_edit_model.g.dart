// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_add_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaryAddEditModel _$SalaryAddEditModelFromJson(Map<String, dynamic> json) =>
    SalaryAddEditModel(
      empid: json['empid'] as int,
      grade: json['grade'] as String,
      basesalary: json['basesalary'] as int,
      dallowance: json['dallowance'] as int,
      spallowance: json['spallowance'] as int,
      mallowance: json['mallowance'] as int,
      tax: json['tax'] as int,
      provident: json['provident'] as int,
      bonus: json['bonus'] as int,
    );

Map<String, dynamic> _$SalaryAddEditModelToJson(SalaryAddEditModel instance) =>
    <String, dynamic>{
      'empid': instance.empid,
      'grade': instance.grade,
      'basesalary': instance.basesalary,
      'dallowance': instance.dallowance,
      'spallowance': instance.spallowance,
      'mallowance': instance.mallowance,
      'tax': instance.tax,
      'provident': instance.provident,
      'bonus': instance.bonus,
    };
