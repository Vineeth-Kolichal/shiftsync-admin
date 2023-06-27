import 'package:json_annotation/json_annotation.dart';

part 'correction_model.g.dart';

@JsonSerializable()
class CorrectionModel {
  @JsonKey(name: 'empid')
  final int empid;
  @JsonKey(name: 'correction')
  final String correction;

  CorrectionModel({required this.empid, required this.correction});

  factory CorrectionModel.fromJson(Map<String, dynamic> json) {
    return _$CorrectionModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CorrectionModelToJson(this);
}
