import 'package:json_annotation/json_annotation.dart';

part 'employee.g.dart';

@JsonSerializable()
class Employee {
  int? id;
  int? empid;
  String? name;
  String? email;
  int? phone;
  String? gender;
  String? dateofbirth;
  String? designation;

  Employee({
    this.id,
    this.empid,
    this.name,
    this.email,
    this.phone,
    this.gender,
    this.dateofbirth,
    this.designation,
  });

  factory Employee.fromJson(Map<String, dynamic> json) {
    return _$EmployeeFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EmployeeToJson(this);
}
