// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_sign_in_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdminSignInResponseModel _$AdminSignInResponseModelFromJson(
        Map<String, dynamic> json) =>
    AdminSignInResponseModel(
      status: json['status'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AdminSignInResponseModelToJson(
        AdminSignInResponseModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
    };
