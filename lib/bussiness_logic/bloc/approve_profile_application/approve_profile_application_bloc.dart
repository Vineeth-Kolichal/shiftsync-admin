import 'package:bloc/bloc.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/data/models/approve_profile_application_response/approve_profile_application_response.dart';
import 'package:shiftsync_admin/data/models/common_resp_model/common_resp_model.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/data/repositories/approve_profile_repository/approve_profile_repo.dart';
import 'package:shiftsync_admin/data/repositories/profile_correction_repository/profile_correction_repository.dart';

part 'approve_profile_application_event.dart';
part 'approve_profile_application_state.dart';

class ApproveCorrectProfileBloc
    extends Bloc<ApproveCorrectProfileEvent, ApproveProfileApplicationState> {
  ApproveProfileRepo approveProfileRepo = ApproveProfileRepo();
  ProfileCorrectionRepository profileCorrectionRepository =
      ProfileCorrectionRepository();
  ApproveCorrectProfileBloc() : super(ApproveProfileApplicationInitial()) {
    on<ApproveProfileApplicationEvent>((event, emit) async {
      emit(ApproveLoadingState());
      ApproveProfileApplicationResponse applicationResponse =
          await approveProfileRepo.approveUserProfileApplication(
              approve: event.applicationModel);
      emit(ApproveResponseState(
          applicationResponse: applicationResponse, isLoading: false));
    });

    on<CorrectionApplicationEvent>((event, emit) async {
      CommonRespModel model = await profileCorrectionRepository
          .profileCorrection(correctionModel: event.correctionModel);
      emit(CorrectionApplicationRespState(
          correctionRespModel: model, isLoading: false));
    });
  }
}
