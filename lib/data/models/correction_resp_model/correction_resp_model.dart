import 'package:json_annotation/json_annotation.dart';

part 'correction_resp_model.g.dart';

@JsonSerializable()
class CorrectionRespModel {
  int? status;
  String? message;

  CorrectionRespModel({
    this.status,
    this.message,
  });

  factory CorrectionRespModel.fromJson(Map<String, dynamic> json) {
    return _$CorrectionRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CorrectionRespModelToJson(this);
}
