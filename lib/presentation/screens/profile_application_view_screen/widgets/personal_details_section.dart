import 'package:flutter/material.dart';
import 'package:shiftsync_admin/core/colors/common_colors.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/content_text.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class PersonalDetailsSection extends StatelessWidget {
  const PersonalDetailsSection({
    super.key,
    required this.firstName,
    required this.lastName,
    required this.dob,
    required this.gender,
    required this.maritalStatus,
  });
  final String firstName;
  final String lastName;
  final String dob;
  final String gender;
  final String maritalStatus;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: BoldTitleText(title: 'Personal Detials'),
        ),
        const Divider(
          color: dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'First Name: '),
            ContentText(
              content: firstName,
            )
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Last Name: '),
            ContentText(
              content: lastName,
            )
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Date Of Birth: '),
            ContentText(
              content: dob,
            ),
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Gender: '),
            ContentText(
              content: gender,
            ),
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Marital Status: '),
            ContentText(
              content: maritalStatus,
            ),
          ],
        ),
        kheightTwenty
      ],
    );
  }
}
