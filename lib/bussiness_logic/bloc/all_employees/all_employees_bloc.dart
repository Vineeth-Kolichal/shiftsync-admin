import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/repositories/all_employees_repo/all_employees_repo.dart';

part 'all_employees_event.dart';
part 'all_employees_state.dart';

class AllEmployeesBloc extends Bloc<AllEmployeesEvent, AllEmployeesState> {
  AllEmployeesRepo employeesRepo = AllEmployeesRepo();
  AllEmployeesBloc() : super(AllEmployeesInitial()) {
    on<AllEmployeesEvent>((event, emit) async {
      emit(AllEmployeesLoading());
      AllEmployeesModel employeesModel = await employeesRepo.getAllemployees();
      emit(AllEmployeesDisplayState(
          employeesModel: employeesModel, isLoading: false));
    });
  }
}
