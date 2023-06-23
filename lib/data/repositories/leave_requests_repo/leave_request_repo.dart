import 'package:shiftsync_admin/data/data_provider/leave_requests_provider/leave_request_provider.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';

class LeaveRequestRepo {
  LeaveRequestsProvider leaveRequestsProvider = LeaveRequestsProvider();
  Future<LeaveRequestsModel> getAllLeaveRequests() async {
    final response = await leaveRequestsProvider.getLeaveRequestFromApi();
    LeaveRequestsModel leaveRequestsModel = response.fold((msg) {
      return LeaveRequestsModel(status: 404, leaveRequests: []);
    }, (resp) {
      return LeaveRequestsModel.fromJson(resp.data);
    });
    return leaveRequestsModel;
  }
}
