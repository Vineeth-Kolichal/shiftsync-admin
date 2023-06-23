// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveRequest _$LeaveRequestFromJson(Map<String, dynamic> json) => LeaveRequest(
      id: json['id'] as int?,
      name: json['name'] as String?,
      fromdate: json['fromdate'] as String?,
      todate: json['todate'] as String?,
      leavetype: json['leavetype'] as String?,
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$LeaveRequestToJson(LeaveRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'fromdate': instance.fromdate,
      'todate': instance.todate,
      'leavetype': instance.leavetype,
      'reason': instance.reason,
    };
