import 'package:json_annotation/json_annotation.dart';

part 'leave_request.g.dart';

@JsonSerializable()
class LeaveRequest {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'name')
  String? name;

  @JsonKey(name: 'fromdate')
  String? fromdate;

  @JsonKey(name: 'todate')
  String? todate;

  @JsonKey(name: 'leavetype')
  String? leavetype;

  @JsonKey(name: 'reason')
  String? reason;

  LeaveRequest({
    this.id,
    this.name,
    this.fromdate,
    this.todate,
    this.leavetype,
    this.reason,
  });

  factory LeaveRequest.fromJson(Map<String, dynamic> json) {
    return _$LeaveRequestFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LeaveRequestToJson(this);
}
