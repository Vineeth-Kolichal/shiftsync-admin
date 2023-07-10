part of 'add_edit_salary_screen_bloc.dart';

@freezed
class AddEditSalaryScreenEvent with _$AddEditSalaryScreenEvent {
   factory AddEditSalaryScreenEvent.add({required SalaryAddEditModel salarydetails}) = Add;
   factory AddEditSalaryScreenEvent.update({required SalaryAddEditModel salarydetails}) = Update;
}