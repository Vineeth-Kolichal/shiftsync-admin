import 'package:json_annotation/json_annotation.dart';

part 'salary_not_added_employee.g.dart';

@JsonSerializable()
class SalaryNotAddedEmployee {
  @JsonKey(name: 'Id')
  String? id;
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Designation')
  String? designation;

  SalaryNotAddedEmployee({this.id, this.name, this.designation});

  factory SalaryNotAddedEmployee.fromJson(Map<String, dynamic> json) {
    return _$SalaryNotAddedEmployeeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalaryNotAddedEmployeeToJson(this);
}
