import 'package:shiftsync_admin/data/data_provider/profile_correction/profile_correction.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/data/models/correction_resp_model/correction_resp_model.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

class ProfileCorrectionRepository {
  ProfileCorrectionApiProvider apiProvider =
      getIt<ProfileCorrectionApiProvider>();
  Future<CorrectionRespModel> profileCorrection(
      {required CorrectionModel correctionModel}) async {
    final response = await apiProvider.sendCorrection(correctionModel);
    CorrectionRespModel respModel = response.fold((msg) {
      return CorrectionRespModel(message: msg);
    }, (resp) {
      return CorrectionRespModel.fromJson(resp.data);
    });
    return respModel;
  }
}
