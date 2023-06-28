import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/data/models/dut_schedule_resp_model/dut_schedule_resp_model.dart';
import 'package:shiftsync_admin/data/models/duty_schdule_model/duty_schdule_model.dart';
import 'package:shiftsync_admin/data/repositories/schedule_duty_repo/schedule_duty_repository.dart';

part 'duty_schedule_event.dart';
part 'duty_schedule_state.dart';

class DutyScheduleBloc extends Bloc<DutyScheduleEvent, DutyScheduleState> {
  ScheduleDutyRepo scheduleDutyRepo = ScheduleDutyRepo();
  DutyScheduleBloc() : super(DutyScheduleInitial()) {
    on<ScheduleDutyEvent>((event, emit) async {
      emit(DutyScheduleLoading());
      DutScheduleRespModel respModel = await scheduleDutyRepo.scheduleDuty(
          scheduleModel: event.scheduleModel);
      emit(DutyScheduleRespState(scheduleRespModel: respModel));
    });
  }
}
