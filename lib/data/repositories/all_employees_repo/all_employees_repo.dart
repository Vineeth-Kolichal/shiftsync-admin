import 'package:shiftsync_admin/data/data_provider/all_employees_api_provider/all_employees_api_provider.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';

class AllEmployeesRepo {
  AllEmployeeApiProvider allEmployeeApiProvider = AllEmployeeApiProvider();
  Future<AllEmployeesModel> getAllemployees() async {
    final response = await allEmployeeApiProvider.getAllEmployeesRawData();
    AllEmployeesModel employeesModel = response.fold((sts) {
      return AllEmployeesModel(status: sts, employees: []);
    }, (resp) {
      return AllEmployeesModel.fromJson(resp.data);
    });
    return employeesModel;
  }
}
