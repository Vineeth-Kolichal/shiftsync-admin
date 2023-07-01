part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial(
      {required bool isLoading,
      required bool hasError,
      required int totalNoEmps,
      required int totalProAppli,
      required int totalLeaveAppli}) = _Initial;

  factory DashboardState.loading() => const DashboardState.initial(
      hasError: false,
      isLoading: true,
      totalNoEmps: 0,
      totalProAppli: 0,
      totalLeaveAppli: 0);
}
