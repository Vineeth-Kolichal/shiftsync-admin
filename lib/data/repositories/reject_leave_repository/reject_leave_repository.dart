import 'package:shiftsync_admin/data/data_provider/reject_leave_api_provider/reject_leave_api_provider.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/data/models/leave_approve_reject_resp_model/leave_approve_reject_resp_model.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

class RejectLeaveRepository {
  RejectLeaveApiProvider rejectLeaveApiProvider =
      getIt<RejectLeaveApiProvider>();
  Future<LeaveApproveRejectRespModel> rejectLeave(
      {required ApproveApplicationModel applicationModel}) async {
    final response =
        await rejectLeaveApiProvider.rejectLeaveAppliaction(applicationModel);
    LeaveApproveRejectRespModel leaveApproveRejectRespModel =
        response.fold((msg) {
      return LeaveApproveRejectRespModel(message: msg, status: 404, data: []);
    }, (resp) {
      return LeaveApproveRejectRespModel.fromJson(resp.data);
    });
    return leaveApproveRejectRespModel;
  }
}
