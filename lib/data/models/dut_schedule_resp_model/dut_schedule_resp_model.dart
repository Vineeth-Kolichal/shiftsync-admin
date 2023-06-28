import 'package:json_annotation/json_annotation.dart';

part 'dut_schedule_resp_model.g.dart';

@JsonSerializable()
class DutScheduleRespModel {
  int? status;
  String? message;


  DutScheduleRespModel({this.status, this.message,});

  factory DutScheduleRespModel.fromJson(Map<String, dynamic> json) {
    return _$DutScheduleRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DutScheduleRespModelToJson(this);
}
