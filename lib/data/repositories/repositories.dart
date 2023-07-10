import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/models/common_resp_model/common_resp_model.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_employee_list_model/salary_add_edit_employee_list_model.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_model/salary_add_edit_model.dart';
import 'package:shiftsync_admin/data/models/transaction_model/transaction_model.dart';

abstract class AllEmployeesRepository {
  Future<AllEmployeesModel> getAllemployees();
}

abstract class LeaveRequestsRepository {
  Future<LeaveRequestsModel> getAllLeaveRequests();
}

abstract class ProfileRegistrationFormsRepository {
  Future<ProfileRegistrationApplicationModel> getAllApplicationForms();
}

abstract class TransactionsRepository {
  Future<TransactionModel> getAllTrasactions();
}

abstract class AddEditSalaryRepository {
  Future<SalaryAddEditEmployeeListModel> getAllEmpList();
  Future<CommonRespModel> addSalaryDetails(
      SalaryAddEditModel salaryAddEditModel);
  Future<CommonRespModel> editSalaryDetails(
      SalaryAddEditModel salaryAddEditModel);
}
