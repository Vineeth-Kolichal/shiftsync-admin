import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/duty_schedule/duty_schedule_bloc.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/employee.dart';
import 'package:shiftsync_admin/data/models/duty_schdule_model/duty_schdule_model.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';
import 'package:shiftsync_admin/util/alert_snackbar_fuctions/response_message_snackbar.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

import 'widget/employee_details_section.dart';

List<String> items = ['Morning Shift', 'Night Shift'];

class EmployeeProfileScreen extends StatelessWidget {
  EmployeeProfileScreen({super.key, required this.employee});
  final Employee employee;
  String dutyShift = '';
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: CustomAppBar(
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const SizedBox(
                height: 30,
                width: 30,
                child: Icon(Iconsax.arrow_left_2),
              ),
            ),
            title: const BoldTitleText(title: 'Detailed View'),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            EmployeeDetailsSectionWidget(employee: employee, size: size),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: size.width * 0.3,
                  child: const Divider(),
                ),
                const BoldTitleText(title: 'Schedule Duty'),
                SizedBox(
                  width: size.width * 0.3,
                  child: const Divider(),
                ),
              ],
            ),
            kheightTwenty,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: DropdownButtonFormField(
                padding: const EdgeInsets.all(10),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Plase select duty shift type";
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: customPrimaryColor[400]!,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 1,
                      color: customPrimaryColor[400]!,
                    ),
                  ),
                ),
                hint: const Text('Select duty shift'),
                icon: const Icon(Iconsax.arrow_down_1),
                borderRadius: BorderRadius.circular(10),
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (value) {
                  if (value != null) {
                    dutyShift = value;
                  }
                },
              ),
            ),
            kheightTwenty,
            BlocConsumer<DutyScheduleBloc, DutyScheduleState>(
              listener: (context, state) {
                if (state is DutyScheduleRespState) {
                  if (state.scheduleRespModel.status == 200) {
                    ScaffoldMessenger.of(context).showSnackBar(
                        responseMessageSnackbar(
                            message: state.scheduleRespModel.message ??
                                'Scheduled successfully',
                            color: Colors.green));
                    Future.delayed(const Duration(milliseconds: 1100), () {
                      Navigator.of(context).pop();
                    });
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                        responseMessageSnackbar(
                            message: 'Something Error', color: Colors.red));
                  }
                }
              },
              builder: (context, state) {
                if (state is DutyScheduleLoading) {
                  return LoadingAnimationWidget.inkDrop(
                    color: customPrimaryColor,
                    size: 25,
                  );
                }
                return SubmitButton(
                    onPressed: () {
                      DutyScheduleModel scheduleModel = DutyScheduleModel(
                          empid: employee.id!,
                          dutytype: (dutyShift == 'Morning Shift') ? 'M' : 'N');
                      context
                          .read<DutyScheduleBloc>()
                          .add(ScheduleDutyEvent(scheduleModel: scheduleModel));
                    },
                    label: 'Schedule');
              },
            )
          ],
        ),
      ),
    );
  }
}
