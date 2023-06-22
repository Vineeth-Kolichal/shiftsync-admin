import 'package:bloc/bloc.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';
import 'package:shiftsync_admin/data/repositories/profile_registration_forms_repository/profile_registration_forms_repository.dart';

part 'profile_reg_form_event.dart';
part 'profile_reg_form_state.dart';

class ProfileRegFormBloc
    extends Bloc<ProfileRegFormEvent, ProfileRegFormState> {
  ProfileRegistrationFormsRepo profileRegistrationFormsRepo =
      ProfileRegistrationFormsRepo();
  ProfileRegFormBloc() : super(ProfileRegFormInitial()) {
    on<ProfileRegFormEvent>((event, emit) async {
      emit(ProfileRegFormInitial());
      ProfileRegistrationApplicationModel profileRegistrationApplicationModel =
          await profileRegistrationFormsRepo.getAllApplicationForms();
      emit(ProfileRegFormResponseState(
          profileRegistrationApplicationModel:
              profileRegistrationApplicationModel,
          isLoading: false));
    });
  }
}
