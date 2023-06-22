// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_registration_application_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileRegistrationApplicationModel
    _$ProfileRegistrationApplicationModelFromJson(Map<String, dynamic> json) =>
        ProfileRegistrationApplicationModel(
          forms: (json['forms'] as List<dynamic>?)
              ?.map((e) => Forms.fromJson(e as Map<String, dynamic>))
              .toList(),
          status: json['status'] as int?,
          msg: json['msg'] as String?,
        );

Map<String, dynamic> _$ProfileRegistrationApplicationModelToJson(
        ProfileRegistrationApplicationModel instance) =>
    <String, dynamic>{
      'forms': instance.forms,
      'status': instance.status,
      'msg': instance.msg,
    };
