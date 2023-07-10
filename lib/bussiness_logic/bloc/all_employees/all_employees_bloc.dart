import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/models/un_scheduled_employee_list/un_scheduled_employee_list.dart';
import 'package:shiftsync_admin/data/repositories/all_employees_repo/all_employees_repo.dart';

part 'all_employees_event.dart';
part 'all_employees_state.dart';

class AllEmployeesBloc extends Bloc<AllEmployeesEvent, AllEmployeesState> {
  List<int> unScheduledEmp = [];
  AllEmployeesRepo employeesRepo = AllEmployeesRepo();
  AllEmployeesBloc() : super(AllEmployeesInitial()) {
    on<AllEmployeesEvent>((event, emit) async {
      unScheduledEmp.clear();
      emit(AllEmployeesLoading());
      AllEmployeesModel employeesModel = await employeesRepo.getAllemployees();
      UnScheduledEmployeeList employeeList =
          await employeesRepo.getUnscheduledEmployeeList();

      for (int i = 0; i < employeeList.employees!.length; i++) {
        unScheduledEmp.add(employeeList.employees![i].id!);
      }
      // log('$unScheduledEmp');
      emit(
        AllEmployeesDisplayState(
            employeesModel: employeesModel,
            isLoading: false,
            unScheduledEmpIds: unScheduledEmp),
      );
    });
    on<UnsheduledEmployeeEvent>((event, emit) async {
      emit(UnscheduledEmployeeState(
          unScheduledEmpIds: [], isLoading: false, loading: true));
      UnScheduledEmployeeList employeeList =
          await employeesRepo.getUnscheduledEmployeeList();
      for (int i = 0; i < employeeList.employees!.length; i++) {
        //unScheduledEmp.add(employeeList.employees![i].id!);
      }
      emit(UnscheduledEmployeeState(
          unScheduledEmpIds: unScheduledEmp, isLoading: false, loading: false));
    });
  }
}
