import 'package:shiftsync_admin/data/data_provider/approve_profile_form/approve_profile_form.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/data/models/approve_profile_application_response/approve_profile_application_response.dart';

class ApproveProfileRepo {
  ApproveProfileFormApi approveProfileFormApi = ApproveProfileFormApi();
  Future<ApproveProfileApplicationResponse> approveUserProfileApplication(
      {required ApproveApplicationModel approve}) async {
    final response =
        await approveProfileFormApi.approveProfile(approveApplication: approve);
    final result = response.fold((message) {
      return ApproveProfileApplicationResponse(
          errors: [], message: message, status: 404);
      //return message;
    }, (response) {
      return ApproveProfileApplicationResponse.fromJson(response.data);

      // if (resp.status == 200) {
      //   return resp.message ?? 'Approved Successfully';
      // } else if (resp.status == 201) {
      //   return resp.message ?? 'Successfully Account Created';
      // } else if (resp.status == 400) {
      //   String allErrorMsg = '';
      //   List<String> errors = [];
      //   errors.addAll(resp.errors ?? ['']);
      //   for (var i = 0; i < errors.length; i++) {
      //     allErrorMsg = '$allErrorMsg ,${errors[i]}';
      //   }
      //   return allErrorMsg;
      // } else {
      //   return resp.status.toString();
      // }
    });
    return result;
  }
}
