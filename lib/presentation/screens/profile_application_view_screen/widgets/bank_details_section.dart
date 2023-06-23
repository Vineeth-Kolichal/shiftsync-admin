import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/content_text.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class BankDetailsSection extends StatelessWidget {
  const BankDetailsSection({
    super.key,
    required this.accNumber,
    required this.ifsc,
    required this.namePassbook,
  });
  final String accNumber;
  final String ifsc;
  final String namePassbook;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: BoldTitleText(title: 'Bank Detials'),
        ),
        const Divider(
          color: dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Account number: '),
            ContentText(
              content: accNumber,
            )
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'IFSC code: '),
            ContentText(
              content: ifsc,
            )
          ],
        ),
        kHeightTen,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Name as per Passbook: '),
            SizedBox(
              // width: size.width * 0.55,
              child: ContentText(
                content: namePassbook,
              ),
            ),
          ],
        ),
        kheightTwenty
      ],
    );
  }
}
