import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/employee.dart';
import 'package:shiftsync_admin/data/repositories/all_employees_repo/all_employees_repo.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';

part 'add_edit_salary_event.dart';
part 'add_edit_salary_state.dart';
part 'add_edit_salary_bloc.freezed.dart';

@injectable
class AddEditSalaryBloc extends Bloc<AddEditSalaryEvent, AddEditSalaryState> {
  AddEditSalaryRepository salaryRepository;
  AllEmployeesRepo employeesRepo = AllEmployeesRepo();
  List<int> empIdList = [];
  AddEditSalaryBloc(this.salaryRepository)
      : super(AddEditSalaryState.Loading()) {
    on<AddEditSalaryEvent>((event, emit) async {
      emit(AddEditSalaryState.Loading());
      final allEmployees = await employeesRepo.getAllemployees();
      final notAddedEmployees = await salaryRepository.getAllEmpList();
      if (notAddedEmployees.employees.isNotEmpty) {
        for (int i = 0; i < notAddedEmployees.employees.length; i++) {
          empIdList.add(int.parse(notAddedEmployees.employees[i].id!));
        }
      }
      emit(state.copyWith(
          isLoading: false,
          allEmployee: allEmployees.employees ?? [],
          salaryNotAddedEmployeeIdList: empIdList));
    });
  }
}
