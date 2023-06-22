import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/content_text.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class OtherDetailsSection extends StatelessWidget {
  const OtherDetailsSection({
    super.key,
    required this.aadharNumber,
    required this.pan,
  });
  final String aadharNumber;
  final String pan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: BoldTitleText(title: 'Other Detials'),
        ),
        const Divider(
          color: dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Aadhar number: '),
            ContentText(
              content: aadharNumber,
            )
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'PAN Number: '),
            ContentText(
              content: pan,
            )
          ],
        ),
        kheightTwenty
      ],
    );
  }
}
