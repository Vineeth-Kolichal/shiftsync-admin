import 'package:json_annotation/json_annotation.dart';

part 'duty_schdule_model.g.dart';

@JsonSerializable()
class DutyScheduleModel {
  @JsonKey(name: 'empid')
  final int empid;
  @JsonKey(name: 'dutytype')
  final String dutytype;

  DutyScheduleModel({required this.empid, required this.dutytype});

  factory DutyScheduleModel.fromJson(Map<String, dynamic> json) {
    return _$DutyScheduleModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DutyScheduleModelToJson(this);
}
