part of 'add_edit_salary_screen_bloc.dart';

@freezed
class AddEditSalaryScreenState with _$AddEditSalaryScreenState {
  const factory AddEditSalaryScreenState({
    required bool isLaoding,
    required CommonRespModel? respModel,
  }) = Initial;
  factory AddEditSalaryScreenState.initial() =>
     const  AddEditSalaryScreenState(isLaoding: false, respModel: null);
}
