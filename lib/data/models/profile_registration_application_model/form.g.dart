// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'form.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forms _$FormsFromJson(Map<String, dynamic> json) => Forms(
      id: json['id'] as int,
      firstname: json['firstname'] as String,
      lastname: json['lastname'] as String,
      email: json['email'] as String,
      gender: json['gender'] as String,
      maritalstatus: json['maritalstatus'] as String,
      phone: json['phone'] as int,
      dateofbirth: json['dateofbirth'] as String,
      paddress: json['paddress'] as String,
      caddress: json['caddress'] as String,
      accno: json['accno'] as String,
      ifsccode: json['ifsccode'] as String,
      nameaspass: json['nameaspass'] as String,
      pannumber: json['pannumber'] as String,
      designation: json['designation'] as String,
      adhaarnumber: json['adhaarnumber'] as String,
      photo: json['photo'] as String,
    );

Map<String, dynamic> _$FormsToJson(Forms instance) => <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'email': instance.email,
      'gender': instance.gender,
      'maritalstatus': instance.maritalstatus,
      'phone': instance.phone,
      'dateofbirth': instance.dateofbirth,
      'paddress': instance.paddress,
      'caddress': instance.caddress,
      'accno': instance.accno,
      'ifsccode': instance.ifsccode,
      'nameaspass': instance.nameaspass,
      'pannumber': instance.pannumber,
      'designation': instance.designation,
      'adhaarnumber': instance.adhaarnumber,
      'photo': instance.photo,
    };
