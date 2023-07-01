import 'package:json_annotation/json_annotation.dart';

import 'employee.dart';

part 'un_scheduled_employee_list.g.dart';

@JsonSerializable()
class UnScheduledEmployeeList {
  List<Employee>? employees;
  int? status;

  UnScheduledEmployeeList({this.employees, this.status});

  factory UnScheduledEmployeeList.fromJson(Map<String, dynamic> json) {
    return _$UnScheduledEmployeeListFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UnScheduledEmployeeListToJson(this);
}
