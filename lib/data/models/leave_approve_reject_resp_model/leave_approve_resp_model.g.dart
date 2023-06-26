// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leave_approve_reject_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LeaveApproveRejectRespModel _$LeaveApproveRejectRespModelFromJson(
        Map<String, dynamic> json) =>
    LeaveApproveRejectRespModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$LeaveApproveRejectRespModelToJson(
        LeaveApproveRejectRespModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };
