part of 'profile_reg_form_bloc.dart';

class ProfileRegFormState {
  final bool isLoading;
  ProfileRegFormState({required this.isLoading});
}

class ProfileRegFormInitial extends ProfileRegFormState {
  ProfileRegFormInitial() : super(isLoading: true);
}

class ProfileRegFormResponseState extends ProfileRegFormState {
  final ProfileRegistrationApplicationModel profileRegistrationApplicationModel;
  ProfileRegFormResponseState(
      {required this.profileRegistrationApplicationModel,
      required super.isLoading});
}
