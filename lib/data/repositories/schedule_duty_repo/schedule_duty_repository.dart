import 'package:shiftsync_admin/data/data_provider/schedule_duty_api_provider/schedule_duty_api_provider.dart';
import 'package:shiftsync_admin/data/models/dut_schedule_resp_model/dut_schedule_resp_model.dart';
import 'package:shiftsync_admin/data/models/duty_schdule_model/duty_schdule_model.dart';

class ScheduleDutyRepo {
  ScheduleDutyApiProvider apiProvider = ScheduleDutyApiProvider();
  Future<DutScheduleRespModel> scheduleDuty(
      {required DutyScheduleModel scheduleModel}) async {
    final response = await apiProvider.scheduleDuty(scheduleModel);
    DutScheduleRespModel scheduleRespModel = response.fold((msg) {
      return DutScheduleRespModel(message: msg);
    }, (resp) {
      return DutScheduleRespModel.fromJson(resp.data);
    });
    return scheduleRespModel;
  }
}
