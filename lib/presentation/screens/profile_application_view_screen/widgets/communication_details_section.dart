import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/widgets/content_text.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';

class CommunicationDetailsSection extends StatelessWidget {
  const CommunicationDetailsSection({
    super.key,
    required this.phone,
    required this.email,
    required this.pAddress,
    required this.cAddress,
  });
  final String phone;
  final String email;
  final String pAddress;
  final String cAddress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const SizedBox(
          width: double.infinity,
          child: BoldTitleText(title: 'Communication Detials'),
        ),
        const Divider(
          color: dividerColor,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Phone no: '),
            ContentText(
              content: phone,
            )
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'e-mail: '),
            ContentText(
              content: email,
            )
          ],
        ),
        kHeightTen,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Permenent Address: '),
            SizedBox(
              width: size.width * 0.5,
              child: ContentText(
                content: pAddress,
              ),
            ),
          ],
        ),
        kHeightTen,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const TitileText(title: 'Communication address: '),
            SizedBox(
              width: size.width * 0.5,
              child: ContentText(
                content: cAddress,
              ),
            ),
          ],
        ),
        kheightTwenty
      ],
    );
  }
}
