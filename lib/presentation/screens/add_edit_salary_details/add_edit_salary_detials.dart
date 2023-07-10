import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/add_edit_salary/add_edit_salary_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/salary_add_edit_screen/add_edit_salary_screen_bloc.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_model/salary_add_edit_model.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_textform_field.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';
import 'package:shiftsync_admin/util/alert_snackbar_fuctions/response_message_snackbar.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';

class AddEditSalaryDetailsScreen extends StatelessWidget {
  AddEditSalaryDetailsScreen(
      {super.key, required this.isAdd, required this.id});
  final bool isAdd;
  final int id;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await context.read<AddEditSalaryScreenBloc>().clear();
        return true;
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
            child: CustomAppBar(
              leading: InkWell(
                onTap: () {
                  context.read<AddEditSalaryScreenBloc>().clear();
                  Navigator.of(context).pop();
                },
                child: const SizedBox(
                  height: 30,
                  width: 30,
                  child: Icon(Iconsax.arrow_left_2),
                ),
              ),
              title: BoldTitleText(
                  title:
                      isAdd ? 'Add Salary details' : 'Update Salary details'),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: _formKey,
            child: ListView(physics: const BouncingScrollPhysics(), children: [
              CustomTextFormField(
                  keyboardType: TextInputType.text,
                  controller:
                      context.read<AddEditSalaryScreenBloc>().gradeController,
                  labelText: 'Employee Grade'),
              CustomTextFormField(
                  controller: context
                      .read<AddEditSalaryScreenBloc>()
                      .baseSalaryController,
                  labelText: 'Base Salary'),
              CustomTextFormField(
                  controller: context
                      .read<AddEditSalaryScreenBloc>()
                      .dalloanceController,
                  labelText: 'Dearness Allowance'),
              CustomTextFormField(
                  controller: context
                      .read<AddEditSalaryScreenBloc>()
                      .spallownaceController,
                  labelText: 'Special Allowance'),
              CustomTextFormField(
                  controller: context
                      .read<AddEditSalaryScreenBloc>()
                      .mallowanceController,
                  labelText: 'Medical Allownace'),
              CustomTextFormField(
                  controller:
                      context.read<AddEditSalaryScreenBloc>().taxController,
                  labelText: 'Tax'),
              CustomTextFormField(
                  controller: context
                      .read<AddEditSalaryScreenBloc>()
                      .providentController,
                  labelText: 'Provident Fund'),
              CustomTextFormField(
                  controller:
                      context.read<AddEditSalaryScreenBloc>().bonusController,
                  labelText: 'Bonus'),
              const Text('*Please check all details before submit'),
              BlocConsumer<AddEditSalaryScreenBloc, AddEditSalaryScreenState>(
                listener: (context, state) {
                  if (state.respModel != null) {
                    if (state.respModel?.status == 200) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          responseMessageSnackbar(
                              message: state.respModel?.message ??
                                  'Salary details added',
                              color: Colors.green));
                      Future.delayed(const Duration(milliseconds: 1500), () {
                        context.read<AddEditSalaryScreenBloc>().clear();
                        context
                            .read<AddEditSalaryBloc>()
                            .add(const GetEmployeeList());
                        Navigator.of(context).pop();
                      });
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                          responseMessageSnackbar(
                              message: state.respModel?.message ??
                                  'Unable to add salary details',
                              color: Colors.red));
                    }
                  }
                },
                builder: (context, state) {
                  if (state.isLaoding) {
                    return LoadingAnimationWidget.inkDrop(
                        color: customPrimaryColor, size: 30);
                  }
                  return SubmitButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (isAdd) {
                          log(context
                              .read<AddEditSalaryScreenBloc>()
                              .baseSalaryController
                              .text);
                          SalaryAddEditModel salaryAddEditModel =
                              SalaryAddEditModel(
                            empid: id,
                            grade: context
                                .read<AddEditSalaryScreenBloc>()
                                .gradeController
                                .text,
                            basesalary: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .baseSalaryController
                                .text),
                            dallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .dalloanceController
                                .text),
                            spallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .spallownaceController
                                .text),
                            mallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .mallowanceController
                                .text),
                            tax: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .taxController
                                .text),
                            provident: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .providentController
                                .text),
                            bonus: int.parse(
                              context
                                  .read<AddEditSalaryScreenBloc>()
                                  .bonusController
                                  .text,
                            ),
                          );
                          context
                              .read<AddEditSalaryScreenBloc>()
                              .add(Add(salarydetails: salaryAddEditModel));
                        } else {
                          SalaryAddEditModel salaryAddEditModel =
                              SalaryAddEditModel(
                            empid: id,
                            grade: context
                                .read<AddEditSalaryScreenBloc>()
                                .gradeController
                                .text,
                            basesalary: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .baseSalaryController
                                .text),
                            dallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .dalloanceController
                                .text),
                            spallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .spallownaceController
                                .text),
                            mallowance: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .mallowanceController
                                .text),
                            tax: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .taxController
                                .text),
                            provident: int.parse(context
                                .read<AddEditSalaryScreenBloc>()
                                .providentController
                                .text),
                            bonus: int.parse(
                              context
                                  .read<AddEditSalaryScreenBloc>()
                                  .bonusController
                                  .text,
                            ),
                          );
                          context
                              .read<AddEditSalaryScreenBloc>()
                              .add(Update(salarydetails: salaryAddEditModel));
                        }
                      }
                    },
                    label:
                        isAdd ? 'Add Salary Details' : 'Update Salary Details',
                    borderRadius: 20,
                  );
                },
              )
            ]),
          ),
        ),
      ),
    );
  }
}
