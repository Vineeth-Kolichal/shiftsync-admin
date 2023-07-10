import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/common_resp_model/common_resp_model.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_model/salary_add_edit_model.dart';
import 'package:shiftsync_admin/data/repositories/repositories.dart';

part 'add_edit_salary_screen_event.dart';
part 'add_edit_salary_screen_state.dart';
part 'add_edit_salary_screen_bloc.freezed.dart';

@injectable
class AddEditSalaryScreenBloc
    extends Bloc<AddEditSalaryScreenEvent, AddEditSalaryScreenState> {
  TextEditingController gradeController = TextEditingController();
  TextEditingController baseSalaryController = TextEditingController();
  TextEditingController dalloanceController = TextEditingController();
  TextEditingController spallownaceController = TextEditingController();
  TextEditingController mallowanceController = TextEditingController();
  TextEditingController taxController = TextEditingController();
  TextEditingController providentController = TextEditingController();
  TextEditingController bonusController = TextEditingController();

  AddEditSalaryRepository salaryRepository;
  AddEditSalaryScreenBloc(this.salaryRepository)
      : super(AddEditSalaryScreenState.initial()) {
    on<Add>((event, emit) async {
      emit(state.copyWith(isLaoding: true));
      CommonRespModel respModel =
          await salaryRepository.addSalaryDetails(event.salarydetails);
      emit(state.copyWith(
          isLaoding: false,
      respModel: respModel));
    });
    on<Update>((event, emit) async {
      emit(state.copyWith(isLaoding: true));
      CommonRespModel respModel =
          await salaryRepository.editSalaryDetails(event.salarydetails);
      emit(state.copyWith(
          isLaoding: false,
         respModel: respModel));
    });
  }
  Future<void> clear() async {
    gradeController.clear();
    baseSalaryController.clear();
    dalloanceController.clear();
    spallownaceController.clear();
    mallowanceController.clear();
    taxController.clear();
    providentController.clear();
    bonusController.clear();
  }
}
