import 'package:json_annotation/json_annotation.dart';

import 'form.dart';

part 'profile_registration_application_model.g.dart';

@JsonSerializable()
class ProfileRegistrationApplicationModel {
  @JsonKey(name: 'forms')
  List<Forms>? forms;

  @JsonKey(name: 'status')
  int? status;

  @JsonKey(name: 'msg')
  String? msg;

  ProfileRegistrationApplicationModel({this.forms, this.status, this.msg});

  factory ProfileRegistrationApplicationModel.fromJson(
      Map<String, dynamic> json) {
    return _$ProfileRegistrationApplicationModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ProfileRegistrationApplicationModelToJson(this);
  }
}
