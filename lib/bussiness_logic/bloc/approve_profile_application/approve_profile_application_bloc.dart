import 'package:bloc/bloc.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/data/models/approve_profile_application_response/approve_profile_application_response.dart';
import 'package:shiftsync_admin/data/models/correction_resp_model/correction_resp_model.dart';
import 'package:shiftsync_admin/data/repositories/approve_profile_repository/approve_profile_repo.dart';

part 'approve_profile_application_event.dart';
part 'approve_profile_application_state.dart';

class ApproveProfileApplicationBloc extends Bloc<ApproveProfileApplicationEvent,
    ApproveProfileApplicationState> {
  ApproveProfileRepo approveProfileRepo = ApproveProfileRepo();
  ApproveProfileApplicationBloc() : super(ApproveProfileApplicationInitial()) {
    on<ApproveProfileApplicationEvent>((event, emit) async {
      emit(ApproveLoadingState());
      ApproveProfileApplicationResponse applicationResponse =
          await approveProfileRepo.approveUserProfileApplication(
              approve: event.applicationModel);
      emit(ApproveResponseState(
          applicationResponse: applicationResponse, isLoading: false));
    });
  }
}
