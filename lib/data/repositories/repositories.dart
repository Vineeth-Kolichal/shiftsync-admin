import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';

abstract class AllEmployeesRepository {
  Future<AllEmployeesModel> getAllemployees();
}

abstract class LeaveRequestsRepository {
  Future<LeaveRequestsModel> getAllLeaveRequests();
}

abstract class ProfileRegistrationFormsRepository {
  Future<ProfileRegistrationApplicationModel> getAllApplicationForms();
}
