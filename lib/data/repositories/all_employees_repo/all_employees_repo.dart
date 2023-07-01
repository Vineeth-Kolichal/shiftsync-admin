import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/data_provider/all_employees_api_provider/all_employees_api_provider.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/models/un_scheduled_employee_list/un_scheduled_employee_list.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

@LazySingleton(as: AllEmployeesRepository)
class AllEmployeesRepo implements AllEmployeesRepository {
  AllEmployeeApiProvider allEmployeeApiProvider =
      getIt<AllEmployeeApiProvider>();
  @override
  Future<AllEmployeesModel> getAllemployees() async {
    final response = await allEmployeeApiProvider.getAllEmployeesRawData();
    AllEmployeesModel employeesModel = response.fold((sts) {
      return AllEmployeesModel(status: sts, employees: []);
    }, (resp) {
      return AllEmployeesModel.fromJson(resp.data);
    });
    return employeesModel;
  }

  Future<UnScheduledEmployeeList> getUnscheduledEmployeeList() async {
    final response = await allEmployeeApiProvider.getUnscheduledEmployees();
    UnScheduledEmployeeList employeeList = response.fold((sts) {
      return UnScheduledEmployeeList(employees: [], status: sts);
    }, (resp) {
      return UnScheduledEmployeeList.fromJson(resp.data);
    });
    return employeeList;
  }
}
