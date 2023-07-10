// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommonRespModel _$CommonRespModelFromJson(Map<String, dynamic> json) =>
    CommonRespModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$CommonRespModelToJson(CommonRespModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
