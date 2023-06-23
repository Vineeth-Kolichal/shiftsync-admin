// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_requests_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveRequestsModel _$LeaveRequestsModelFromJson(Map<String, dynamic> json) =>
    LeaveRequestsModel(
      leaveRequests: (json['Leave Requests'] as List<dynamic>?)
          ?.map((e) => LeaveRequest.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as int?,
    );

Map<String, dynamic> _$LeaveRequestsModelToJson(LeaveRequestsModel instance) =>
    <String, dynamic>{
      'Leave Requests': instance.leaveRequests,
      'status': instance.status,
    };
