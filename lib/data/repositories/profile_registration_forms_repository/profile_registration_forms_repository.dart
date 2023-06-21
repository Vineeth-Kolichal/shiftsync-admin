import 'package:shiftsync_admin/data/data_provider/profile_registration_applications_provider/profile_registration_applications_provider.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';

class ProfileRegistrationFormsRepo {
  ProfileRegistrationsApplicationsProvider
      profileRegistrationsApplicationsProvider =
      ProfileRegistrationsApplicationsProvider();
  Future<ProfileRegistrationApplicationModel> getAllApplicationForms() async {
    final response =
        await profileRegistrationsApplicationsProvider.getProfileApplications();
    ProfileRegistrationApplicationModel result = response.fold(
      (message) =>
          ProfileRegistrationApplicationModel(status: 401, msg: message),
      (resp) => ProfileRegistrationApplicationModel.fromJson(resp.data),
    );
    return result;
  }
}
