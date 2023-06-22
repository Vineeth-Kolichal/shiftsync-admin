part of 'admin_sign_in_bloc.dart';

class AdminSignInState {
  final bool isLoading;
  AdminSignInState({required this.isLoading});
}

class AdminSignInInitial extends AdminSignInState {
  AdminSignInInitial() : super(isLoading: false);
}

class AdminSignInLoading extends AdminSignInState {
  AdminSignInLoading() : super(isLoading: true);
}

class AdminSignInResponseState extends AdminSignInState {
  final AdminSignInResponseModel adminSignInResponseModel;
  AdminSignInResponseState(
      {required this.adminSignInResponseModel, required super.isLoading});
}
