import 'package:json_annotation/json_annotation.dart';

part 'common_resp_model.g.dart';

@JsonSerializable()
class CommonRespModel {
  int? status;
  String? message;

  CommonRespModel({
    this.status,
    this.message,
  });

  factory CommonRespModel.fromJson(Map<String, dynamic> json) {
    return _$CommonRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommonRespModelToJson(this);
}
