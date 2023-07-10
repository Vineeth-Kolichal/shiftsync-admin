import 'package:flutter/material.dart';
import 'package:shiftsync_admin/presentation/widgets/simmer_loading_for_text.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class EmployeeLoadingScreen extends StatelessWidget {
  const EmployeeLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (_, idx) {
          return Container(
            decoration: BoxDecoration(
              color: kWhitebackground,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: customPrimaryColor, width: 0.2),
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ShimmerLoadingForText(width: 0.15)),
                  kWidthFive,
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ShimmerLoadingForText(width: 0.55),
                        kHeightTen,
                        ShimmerLoadingForText(width: 0.3)
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, idx) {
          return kHeightTen;
        },
        itemCount: 10);
  }
}
