import 'package:json_annotation/json_annotation.dart';

part 'form.g.dart';

@JsonSerializable()
class Form {
  @JsonKey(name: 'id')
  int? id;

  @JsonKey(name: 'firstname')
  String? firstname;

  @JsonKey(name: 'lastname')
  String? lastname;

  @JsonKey(name: 'email')
  String? email;
  
  @JsonKey(name: 'gender')
  String? gender;

  @JsonKey(name: 'maritalstatus')
  String? maritalstatus;

  @JsonKey(name: 'phone')
  int? phone;

  @JsonKey(name: 'dateofbirth')
  String? dateofbirth;

  @JsonKey(name: 'paddress')
  String? paddress;

  @JsonKey(name: 'caddress')
  String? caddress;

  @JsonKey(name: 'accno')
  String? accno;

  @JsonKey(name: 'ifsccode')
  String? ifsccode;

  @JsonKey(name: 'nameaspass')
  String? nameaspass;

  @JsonKey(name: 'pannumber')
  String? pannumber;

  @JsonKey(name: 'designation')
  String? designation;

  @JsonKey(name: 'adhaarnumber')
  String? adhaarnumber;

  @JsonKey(name: 'photo')
  String? photo;

  Form({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.gender,
    this.maritalstatus,
    this.phone,
    this.dateofbirth,
    this.paddress,
    this.caddress,
    this.accno,
    this.ifsccode,
    this.nameaspass,
    this.pannumber,
    this.designation,
    this.adhaarnumber,
    this.photo,
  });

  factory Form.fromJson(Map<String, dynamic> json) => _$FormFromJson(json);

  Map<String, dynamic> toJson() => _$FormToJson(this);
}
