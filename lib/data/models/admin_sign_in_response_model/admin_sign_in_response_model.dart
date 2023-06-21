import 'package:json_annotation/json_annotation.dart';

part 'admin_sign_in_response_model.g.dart';

@JsonSerializable()
class AdminSignInResponseModel {
  @JsonKey(name: 'status')
  int? status;
  @JsonKey(name: 'message')
  String? message;

  AdminSignInResponseModel({
    this.status,
    this.message,
  });

  factory AdminSignInResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AdminSignInResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdminSignInResponseModelToJson(this);
}
