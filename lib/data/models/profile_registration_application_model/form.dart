import 'package:json_annotation/json_annotation.dart';

part 'form.g.dart';

@JsonSerializable()
class Forms {
  @JsonKey(name: 'id')
  final int id;

  @JsonKey(name: 'firstname')
  final String firstname;

  @JsonKey(name: 'lastname')
  final String lastname;

  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'gender')
  final String gender;

  @JsonKey(name: 'maritalstatus')
  final String maritalstatus;

  @JsonKey(name: 'phone')
  final int phone;

  @JsonKey(name: 'dateofbirth')
  final String dateofbirth;

  @JsonKey(name: 'paddress')
  final String paddress;

  @JsonKey(name: 'caddress')
  final String caddress;

  @JsonKey(name: 'accno')
  final String accno;

  @JsonKey(name: 'ifsccode')
  final String ifsccode;

  @JsonKey(name: 'nameaspass')
  final String nameaspass;

  @JsonKey(name: 'pannumber')
  final String pannumber;

  @JsonKey(name: 'designation')
  final String designation;

  @JsonKey(name: 'adhaarnumber')
  final String adhaarnumber;

  @JsonKey(name: 'photo')
  final String photo;

  Forms({
    required this.id,
    required this.firstname,
    required this.lastname,
    required this.email,
    required this.gender,
    required this.maritalstatus,
    required this.phone,
    required this.dateofbirth,
    required this.paddress,
    required this.caddress,
    required this.accno,
    required this.ifsccode,
    required this.nameaspass,
    required this.pannumber,
    required this.designation,
    required this.adhaarnumber,
    required this.photo,
  });

  factory Forms.fromJson(Map<String, dynamic> json) => _$FormsFromJson(json);

  Map<String, dynamic> toJson() => _$FormsToJson(this);
}
