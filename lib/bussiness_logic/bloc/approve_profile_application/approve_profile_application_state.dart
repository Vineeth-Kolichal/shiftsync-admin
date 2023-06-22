part of 'approve_profile_application_bloc.dart';

class ApproveProfileApplicationState {
  final bool isLoading;
  ApproveProfileApplicationState({required this.isLoading});
}

class ApproveProfileApplicationInitial extends ApproveProfileApplicationState {
  ApproveProfileApplicationInitial() : super(isLoading: false);
}

class ApproveLoadingState extends ApproveProfileApplicationState {
  ApproveLoadingState() : super(isLoading: true);
}

class ApproveResponseState extends ApproveProfileApplicationState {
  final ApproveProfileApplicationResponse applicationResponse;
  ApproveResponseState(
      {required this.applicationResponse, required super.isLoading});
}
