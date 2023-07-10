import 'package:json_annotation/json_annotation.dart';

import 'salary_not_added_employee.dart';

part 'salary_add_edit_employee_list_model.g.dart';

@JsonSerializable()
class SalaryAddEditEmployeeListModel {
  @JsonKey(name: 'Employees')
  List<SalaryNotAddedEmployee> employees;
  int? status;
  String? message;

  SalaryAddEditEmployeeListModel(
      {this.employees = const [], this.status, this.message});

  factory SalaryAddEditEmployeeListModel.fromJson(Map<String, dynamic> json) {
    return _$SalaryAddEditEmployeeListModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SalaryAddEditEmployeeListModelToJson(this);
  }
}
