part of 'leave_request_bloc.dart';

class LeaveRequestEvent {}

class ApproveLeaveEvent extends LeaveRequestEvent {
  final ApproveApplicationModel applicationModel;
  ApproveLeaveEvent({required this.applicationModel});
}

class DeclineLeaveEvent extends LeaveRequestEvent {
  final ApproveApplicationModel applicationModel;
  DeclineLeaveEvent({required this.applicationModel});
}
