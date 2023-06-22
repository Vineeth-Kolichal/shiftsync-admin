import 'package:json_annotation/json_annotation.dart';


part 'approve_profile_application_response.g.dart';

@JsonSerializable()
class ApproveProfileApplicationResponse {
  int? status;
  String? message;
  List<String>? errors;


  ApproveProfileApplicationResponse({
    this.status,
    this.message,
    this.errors,
 
  });

  factory ApproveProfileApplicationResponse.fromJson(
      Map<String, dynamic> json) {
    return _$ApproveProfileApplicationResponseFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ApproveProfileApplicationResponseToJson(this);
  }
}
