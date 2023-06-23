import 'package:json_annotation/json_annotation.dart';

import 'leave_request.dart';

part 'leave_requests_model.g.dart';

@JsonSerializable()
class LeaveRequestsModel {
  @JsonKey(name: 'Leave Requests')
  List<LeaveRequest>? leaveRequests;
  @JsonKey(name: 'status')
  int? status;

  LeaveRequestsModel({this.leaveRequests, this.status});

  factory LeaveRequestsModel.fromJson(Map<String, dynamic> json) {
    return _$LeaveRequestsModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveRequestsModelToJson(this);
}
