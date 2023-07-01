import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/data_provider/leave_requests_provider/leave_request_provider.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

@LazySingleton(as: LeaveRequestsRepository)
class LeaveRequestRepo implements LeaveRequestsRepository {
  LeaveRequestsProvider leaveRequestsProvider = getIt<LeaveRequestsProvider>();
  @override
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
