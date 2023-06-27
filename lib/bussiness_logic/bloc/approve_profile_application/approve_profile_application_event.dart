part of 'approve_profile_application_bloc.dart';

class ApproveCorrectProfileEvent {}

class ApproveProfileApplicationEvent extends ApproveCorrectProfileEvent {
  final ApproveApplicationModel applicationModel;
  ApproveProfileApplicationEvent({required this.applicationModel});
}

class CorrectionApplicationEvent extends ApproveCorrectProfileEvent {
  final CorrectionModel correctionModel;
  CorrectionApplicationEvent({required this.correctionModel});
}
