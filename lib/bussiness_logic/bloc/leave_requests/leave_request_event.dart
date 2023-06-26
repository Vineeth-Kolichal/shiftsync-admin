part of 'leave_request_bloc.dart';

class LeaveRequestEvent {}

class ApproveLeaveEvent extends LeaveRequestEvent {
  final ApproveApplicationModel applicationModel;
  ApproveLeaveEvent({required this.applicationModel});
}

class RejectLeaveEvent extends LeaveRequestEvent {
  final ApproveApplicationModel applicationModel;
  RejectLeaveEvent({required this.applicationModel});
}
