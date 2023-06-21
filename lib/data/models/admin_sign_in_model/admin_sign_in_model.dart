import 'package:json_annotation/json_annotation.dart';

part 'admin_sign_in_model.g.dart';

@JsonSerializable()
class AdminSignInModel {
  @JsonKey(name: 'username')
  final String username;
  @JsonKey(name: 'password')
  final String password;

  AdminSignInModel({required this.username, required this.password});

  factory AdminSignInModel.fromJson(Map<String, dynamic> json) {
    return _$AdminSignInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AdminSignInModelToJson(this);
}
