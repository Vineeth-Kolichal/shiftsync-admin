import 'package:bloc/bloc.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/repositories/leave_requests_repo/leave_request_repo.dart';

part 'leave_request_event.dart';
part 'leave_request_state.dart';

class LeaveRequestBloc extends Bloc<LeaveRequestEvent, LeaveRequestState> {
  LeaveRequestRepo leaveRequestRepo = LeaveRequestRepo();
  LeaveRequestBloc() : super(LeaveRequestInitial()) {
    on<LeaveRequestEvent>((event, emit) async {
      final LeaveRequestsModel leaveRequestsModel =
          await leaveRequestRepo.getAllLeaveRequests();

      emit(LeaveRequestResponseState(
          leaveRequestsModel: leaveRequestsModel, isLoading: false));
    });
  }
}
