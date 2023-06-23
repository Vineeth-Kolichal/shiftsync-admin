import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/approve_profile_application/approve_profile_application_bloc.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/form.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/bank_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/communication_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/job_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/other_details_section.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';
import 'widgets/personal_details_section.dart';

class ProfileApplicationViewScreen extends StatelessWidget {
  const ProfileApplicationViewScreen({super.key, required this.forms});
  final Forms forms;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ApproveProfileApplicationBloc,
        ApproveProfileApplicationState>(
      listener: (context, state) {
        if (state is ApproveResponseState) {
          log('${state.applicationResponse.errors} --------------${state.applicationResponse.status}');
          String allErrorMsg = '';
          List<String> errors = [];
          errors.addAll(state.applicationResponse.errors ?? ['']);
          for (var i = 0; i < errors.length; i++) {
            allErrorMsg = '$allErrorMsg \n ${i + 1}.${errors[i]}';
          }
          showDialog(
              context: context,
              builder: (ctx) {
                return AlertDialog(
                  title: Text('Correction!'),
                  content: Text(allErrorMsg),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('close')),
                  ],
                );
              });
        }
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: SafeArea(
              child: CustomAppBar(
            leading: InkWell(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: const SizedBox(
                height: 35,
                width: 35,
                child: Icon(Iconsax.arrow_left_2),
              ),
            ),
            title: const BoldTitleText(title: 'Employee details'),
          )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              PersonalDetailsSection(
                firstName: forms.firstname,
                lastName: forms.lastname,
                dob: forms.dateofbirth,
                gender: forms.gender == 'm' ? "Male" : 'Female',
                maritalStatus:
                    forms.maritalstatus == 's' ? 'Single' : 'Married',
              ),
              CommunicationDetailsSection(
                phone: forms.phone.toString(),
                email: forms.email,
                pAddress: forms.paddress,
                cAddress: forms.caddress,
              ),
              BankDetailsSection(
                accNumber: forms.accno,
                ifsc: forms.ifsccode,
                namePassbook: forms.nameaspass,
              ),
              JobDetailsSection(
                designation: forms.designation,
              ),
              OtherDetailsSection(
                aadharNumber: forms.adhaarnumber,
                pan: forms.pannumber,
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SubmitButton(
                  onPressed: () {},
                  label: 'Correction',
                  width: 0.3,
                  // buttonColor: Colors.red,
                  borderRadius: 20,
                ),
                kWidthFive,
                BlocBuilder<ApproveProfileApplicationBloc,
                    ApproveProfileApplicationState>(
                  builder: (context, state) {
                    return SubmitButton(
                      borderRadius: 20,
                      onPressed: (state.isLoading)
                          ? null
                          : () {
                              context.read<ApproveProfileApplicationBloc>().add(
                                  ApproveProfileApplicationEvent(
                                      applicationModel: ApproveApplicationModel(
                                          id: forms.id)));
                            },
                      label: (state.isLoading) ? 'Verifying' : 'Approve',
                      width: 0.3,
                      buttonColor: Colors.green,
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
