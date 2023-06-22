import 'package:json_annotation/json_annotation.dart';

part 'approve_application.g.dart';

@JsonSerializable()
class ApproveApplicationModel {
  @JsonKey(name: 'id')
  final int id;

  ApproveApplicationModel({required this.id});

  factory ApproveApplicationModel.fromJson(Map<String, dynamic> json) {
    return _$ApproveApplicationModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ApproveApplicationModelToJson(this);
}
