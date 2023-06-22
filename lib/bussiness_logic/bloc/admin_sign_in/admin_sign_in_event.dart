part of 'admin_sign_in_bloc.dart';

class AdminSignInEvent {}

class AdminSignIn extends AdminSignInEvent {
  final AdminSignInModel adminSignInModel;
  AdminSignIn({required this.adminSignInModel});
}
