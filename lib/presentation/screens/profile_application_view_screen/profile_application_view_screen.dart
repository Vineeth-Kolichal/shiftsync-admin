import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/bank_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/communication_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/job_details_section.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/other_details_section.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';

import 'widgets/personal_details_section.dart';

class ProfileApplicationViewScreen extends StatelessWidget {
  const ProfileApplicationViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              firstName: 'vineeth',
              lastName: 'Chandran',
              dob: '05-08-1998',
              gender: 'male',
              maritalStatus: 'single',
            ),
            CommunicationDetailsSection(
              phone: '8281234435',
              email: 'vinee.kcl@gmail.com',
              pAddress:
                  'Erinhilamkode,  kolichal, kasaragod, rajapuram via, 671532',
              cAddress: 'Erinhilamkode, kolichal, kasaragod',
            ),
            BankDetailsSection(
              accNumber: '45784578467978',
              ifsc: 'JDJFK4514',
              namePassbook: 'Vineeth',
            ),
            JobDetailsSection(
              designation: 'Developer',
            ),
            OtherDetailsSection(
                aadharNumber: '124578986532', pan: 'BFRTH45544H')
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
              SubmitButton(
                borderRadius: 20,
                onPressed: () {},
                label: 'Approve',
                width: 0.3,
                buttonColor: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
