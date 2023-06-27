part of 'leave_request_bloc.dart';

class LeaveRequestState {
  final bool isLoading;
  LeaveRequestState({required this.isLoading});
}

class LeaveRequestInitial extends LeaveRequestState {
  LeaveRequestInitial() : super(isLoading: true);
}

class LeaveRequestResponseState extends LeaveRequestState {
  final LeaveRequestsModel leaveRequestsModel;
  LeaveRequestResponseState(
      {required this.leaveRequestsModel, required super.isLoading});
}

class LeaveApproveRespState extends LeaveRequestState {
  final LeaveApproveRejectRespModel leaveApproveRespModel;
  LeaveApproveRespState(
      {required this.leaveApproveRespModel, required super.isLoading});
}

class LeaveRejectRespState extends LeaveRequestState {
  final LeaveApproveRejectRespModel leaveApproveRespModel;
  LeaveRejectRespState(
      {required this.leaveApproveRespModel, required super.isLoading});
}
