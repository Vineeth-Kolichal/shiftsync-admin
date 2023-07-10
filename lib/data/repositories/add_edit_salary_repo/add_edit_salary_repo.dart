import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/data_provider/add_edit_salary/add_edit_salary_emp_list_api.dart';
import 'package:shiftsync_admin/data/models/common_resp_model/common_resp_model.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_employee_list_model/salary_add_edit_employee_list_model.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_model/salary_add_edit_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

@LazySingleton(as: AddEditSalaryRepository)
class AddEditSalaryRepo implements AddEditSalaryRepository {
  AddEditSalarytApi addEditSalarytApi = getIt<AddEditSalarytApi>();
  @override
  Future<SalaryAddEditEmployeeListModel> getAllEmpList() async {
    final response = await addEditSalarytApi.getAllEmpList();
    SalaryAddEditEmployeeListModel employeeListModel = response.fold((msg) {
      return SalaryAddEditEmployeeListModel(message: msg, status: 404);
    }, (resp) {
      return SalaryAddEditEmployeeListModel.fromJson(resp.data);
    });
    return employeeListModel;
  }

  @override
  Future<CommonRespModel> addSalaryDetails(
      SalaryAddEditModel salaryAddEditModel) async {
    final response =
        await addEditSalarytApi.addSalaryDetails(salaryAddEditModel);
    CommonRespModel respModel = response.fold((msg) {
      return CommonRespModel(message: msg, status: 400);
    }, (resp) {
      return CommonRespModel.fromJson(resp.data);
    });
    return respModel;
  }

  @override
  Future<CommonRespModel> editSalaryDetails(
      SalaryAddEditModel salaryAddEditModel) async {
    final response =
        await addEditSalarytApi.updateSalaryDetails(salaryAddEditModel);
    CommonRespModel respModel = response.fold((msg) {
      return CommonRespModel(message: msg, status: 400);
    }, (resp) {
      return CommonRespModel.fromJson(resp.data);
    });
    return respModel;
  }
}
