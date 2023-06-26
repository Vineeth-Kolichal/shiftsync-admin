import 'package:json_annotation/json_annotation.dart';

part 'leave_approve_resp_model.g.dart';

@JsonSerializable()
class LeaveApproveRejectRespModel {
  int? status;
  String? message;
  List<String>? data;

  LeaveApproveRejectRespModel({this.status, this.message, this.data});

  factory LeaveApproveRejectRespModel.fromJson(Map<String, dynamic> json) {
    return _$LeaveApproveRejectRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveApproveRejectRespModelToJson(this);
}
