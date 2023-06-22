// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'approve_profile_application_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApproveProfileApplicationResponse _$ApproveProfileApplicationResponseFromJson(
        Map<String, dynamic> json) =>
    ApproveProfileApplicationResponse(
      status: json['status'] as int?,
      message: json['message'] as String?,
      errors:
          (json['errors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApproveProfileApplicationResponseToJson(
        ApproveProfileApplicationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'errors': instance.errors,
    };
