import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/all_employees_model.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_requests_model.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/profile_registration_application_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

@injectable
class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  AllEmployeesRepository allEmployeesRepo;
  LeaveRequestsRepository leaveRequestsRepo;
  ProfileRegistrationFormsRepository profileFormsRepo;

  DashboardBloc(
      this.allEmployeesRepo, this.leaveRequestsRepo, this.profileFormsRepo)
      : super(DashboardState.loading()) {
    on<DashboardEvent>((event, emit) async {
      emit(DashboardState.loading());
      AllEmployeesModel allEmps = await allEmployeesRepo.getAllemployees();
      LeaveRequestsModel leavReqModel =
          await leaveRequestsRepo.getAllLeaveRequests();
      ProfileRegistrationApplicationModel prRegAppli =
          await profileFormsRepo.getAllApplicationForms();
      emit(state.copyWith(
        isLoading: false,
        totalLeaveAppli: leavReqModel.leaveRequests!.length,
        totalNoEmps: allEmps.employees!.length,
        // totalProAppli: prRegAppli.forms!.length
      ));
    });
  }
}
