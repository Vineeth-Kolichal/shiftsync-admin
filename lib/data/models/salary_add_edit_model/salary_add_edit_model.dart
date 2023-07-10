import 'package:json_annotation/json_annotation.dart';

part 'salary_add_edit_model.g.dart';

@JsonSerializable()
class SalaryAddEditModel {
  @JsonKey(name: 'empid')
  final int empid;
  @JsonKey(name: 'grade')
  final String grade;
  @JsonKey(name: 'basesalary')
  final int basesalary;
  @JsonKey(name: 'dallowance')
  final int dallowance;
  @JsonKey(name: 'spallowance')
  final int spallowance;
  @JsonKey(name: 'mallowance')
  final int mallowance;
  @JsonKey(name: 'tax')
  final int tax;
  @JsonKey(name: 'provident')
  final int provident;
  @JsonKey(name: 'bonus')
  final int bonus;

  SalaryAddEditModel({
    required this.empid,
    required this.grade,
    required this.basesalary,
    required this.dallowance,
    required this.spallowance,
    required this.mallowance,
    required this.tax,
    required this.provident,
    required this.bonus,
  });

  factory SalaryAddEditModel.fromJson(Map<String, dynamic> json) {
    return _$SalaryAddEditModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SalaryAddEditModelToJson(this);
}
