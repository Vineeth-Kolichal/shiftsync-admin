import 'package:flutter/material.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shimmer/shimmer.dart';

class EmployeeLoadingScreen extends StatelessWidget {
  const EmployeeLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView.separated(
        itemBuilder: (_, idx) {
          return Container(
            decoration: BoxDecoration(
              color: kWhitebackground,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: customPrimaryColor, width: 0.2),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      enabled: true,
                      child: Container(
                        color: Colors.grey,
                        height: 10,
                        width: size.width * 0.15,
                      ),
                    ),
                  ),
                  kWidthFive,
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          enabled: true,
                          child: Container(
                            color: Colors.grey,
                            height: 10,
                            width: size.width * 0.55,
                          ),
                        ),
                        kHeightTen,
                        Shimmer.fromColors(
                          baseColor: Colors.grey[300]!,
                          highlightColor: Colors.grey[100]!,
                          enabled: true,
                          child: Container(
                            color: Colors.grey,
                            height: 10,
                            width: size.width * 0.3,
                          ),
                        ),
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
