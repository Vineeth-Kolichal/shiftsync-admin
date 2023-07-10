import 'package:shiftsync_admin/data/data_provider/profile_correction/profile_correction.dart';
import 'package:shiftsync_admin/data/models/common_resp_model/common_resp_model.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/util/dependancy_injection/dependancy_injection.dart';

class ProfileCorrectionRepository {
  ProfileCorrectionApiProvider apiProvider =
      getIt<ProfileCorrectionApiProvider>();
  Future<CommonRespModel> profileCorrection(
      {required CorrectionModel correctionModel}) async {
    final response = await apiProvider.sendCorrection(correctionModel);
    CommonRespModel respModel = response.fold((msg) {
      return CommonRespModel(message: msg);
    }, (resp) {
      return CommonRespModel.fromJson(resp.data);
    });
    return respModel;
  }
}
