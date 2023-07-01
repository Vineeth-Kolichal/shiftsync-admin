import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/data/models/leave_approve_reject_resp_model/leave_approve_reject_resp_model.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/repositories/approve_leave_repository/approve_leave_repository.dart';
import 'package:shiftsync_admin/data/repositories/leave_requests_repo/leave_request_repo.dart';
import 'package:shiftsync_admin/data/repositories/reject_leave_repository/reject_leave_repository.dart';

part 'leave_request_event.dart';
part 'leave_request_state.dart';

class LeaveRequestBloc extends Bloc<LeaveRequestEvent, LeaveRequestState> {
  LeaveRequestRepo leaveRequestRepo = LeaveRequestRepo();
  RejectLeaveRepository rejectLeaveRepository = RejectLeaveRepository();
  ApproveLeaveRepository approveLeaveRepository = ApproveLeaveRepository();
  LeaveRequestBloc() : super(LeaveRequestInitial()) {
    on<LeaveRequestEvent>((event, emit) async {
      emit(LeaveRequestInitial());
      final LeaveRequestsModel leaveRequestsModel =
          await leaveRequestRepo.getAllLeaveRequests();

      emit(LeaveRequestResponseState(
          leaveRequestsModel: leaveRequestsModel, isLoading: false));
    });
    on<ApproveLeaveEvent>((event, emit) async {
      LeaveApproveRejectRespModel approveRespModel =
          await approveLeaveRepository.approveLeaveRequest(
              applicationModel: event.applicationModel);
      emit(
        LeaveApproveRespState(
            leaveApproveRespModel: approveRespModel, isLoading: false),
      );
    });
    on<DeclineLeaveEvent>((event, emit) async {
      LeaveApproveRejectRespModel approveRespModel = await rejectLeaveRepository
          .rejectLeave(applicationModel: event.applicationModel);
      emit(LeaveApproveRespState(
          leaveApproveRespModel: approveRespModel, isLoading: false));
    });
  }
}
