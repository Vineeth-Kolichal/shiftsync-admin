import 'package:json_annotation/json_annotation.dart';

import 'employee.dart';

part 'all_employees_model.g.dart';

@JsonSerializable()
class AllEmployeesModel {
  @JsonKey(name: 'Employees')
  List<Employee>? employees;
  @JsonKey(name: 'status')
  int? status;

  AllEmployeesModel({this.employees, this.status});

  factory AllEmployeesModel.fromJson(Map<String, dynamic> json) {
    return _$AllEmployeesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AllEmployeesModelToJson(this);
}
