import 'package:bloc/bloc.dart';
import 'package:shiftsync_admin/data/data_provider/admin_signin_providers/admin_signin_providers.dart';
import 'package:shiftsync_admin/data/models/admin_sign_in_model/admin_sign_in_model.dart';
import 'package:shiftsync_admin/data/models/admin_sign_in_response_model/admin_sign_in_response_model.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

part 'admin_sign_in_event.dart';
part 'admin_sign_in_state.dart';

class AdminSignInBloc extends Bloc<AdminSignInEvent, AdminSignInState> {
  AdminSignInProvider adminSignInProvider = getIt<AdminSignInProvider>();
  AdminSignInBloc() : super(AdminSignInInitial()) {
    on<AdminSignIn>((event, emit) async {
      emit(AdminSignInLoading());
      AdminSignInResponseModel adminSignInResponseModel =
          await adminSignInProvider.adminSignIn(
              adminSignInModel: event.adminSignInModel);
      emit(AdminSignInResponseState(
          adminSignInResponseModel: adminSignInResponseModel,
          isLoading: false));
    });
  }
}
