import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/content_text.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class JobDetailsSection extends StatelessWidget {
  const JobDetailsSection({
    super.key,
    required this.designation,
  });
  final String designation;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: BoldTitleText(title: 'Job Detials'),
        ),
        const Divider(
          color: dividerColor,
        ),
        kHeightTen,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Designation: '),
            SizedBox(
              width: size.width * 0.55,
              child: ContentText(
                content: designation,
              ),
            ),
          ],
        ),
        kheightTwenty
      ],
    );
  }
}
