part of 'add_edit_salary_bloc.dart';

@freezed
class AddEditSalaryState with _$AddEditSalaryState {
  const factory AddEditSalaryState(
      {required bool isLoading,
      required List<Employee> allEmployee,
      required List<int> salaryNotAddedEmployeeIdList}) = _Initial;
  factory AddEditSalaryState.Loading() => const AddEditSalaryState(
      isLoading: true, allEmployee: [], salaryNotAddedEmployeeIdList: []);
}
