part of 'duty_schedule_bloc.dart';

class DutyScheduleEvent {}

class ScheduleDutyEvent extends DutyScheduleEvent {
  final DutyScheduleModel scheduleModel;

  ScheduleDutyEvent({required this.scheduleModel});
}
