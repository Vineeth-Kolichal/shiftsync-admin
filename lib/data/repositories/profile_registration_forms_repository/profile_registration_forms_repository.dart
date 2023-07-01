import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/data_provider/profile_registration_applications_provider/profile_registration_applications_provider.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

@LazySingleton(as: ProfileRegistrationFormsRepository)
class ProfileRegistrationFormsRepo
    implements ProfileRegistrationFormsRepository {
  ProfileRegistrationsApplicationsProvider
      profileRegistrationsApplicationsProvider =
      getIt<ProfileRegistrationsApplicationsProvider>();
  @override
  Future<ProfileRegistrationApplicationModel> getAllApplicationForms() async {
    final response =
        await profileRegistrationsApplicationsProvider.getProfileApplications();
    ProfileRegistrationApplicationModel result = response.fold(
      (message) {
        return ProfileRegistrationApplicationModel(
            forms: [],
            status: (message == '204') ? int.parse(message.trim()) : 401,
            msg: (message == '204') ? null : message);
      },
      (resp) => ProfileRegistrationApplicationModel.fromJson(resp.data),
    );
    return result;
  }
}
