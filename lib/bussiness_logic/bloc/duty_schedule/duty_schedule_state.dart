part of 'duty_schedule_bloc.dart';

class DutyScheduleState {}

class DutyScheduleInitial extends DutyScheduleState {}

class DutyScheduleLoading extends DutyScheduleState {}

class DutyScheduleRespState extends DutyScheduleState {
  final DutScheduleRespModel scheduleRespModel;

  DutyScheduleRespState({required this.scheduleRespModel});
}
