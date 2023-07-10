import 'package:flutter/material.dart';
import 'package:shiftsync_admin/presentation/widgets/simmer_loading_for_text.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shimmer/shimmer.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({super.key, this.showTrailing = false});
  final bool showTrailing;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (ctx, index) {
        return Container(
          height: 70,
          decoration: BoxDecoration(
              color: kWhitebackground, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 25, top: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ShimmerLoadingForText(width: 0.6),
                    kHeightTen,
                    ShimmerLoadingForText(width: 0.3)
                  ],
                ),
                showTrailing
                    ? Shimmer.fromColors(
                        baseColor: Colors.grey[300]!,
                        highlightColor: Colors.grey[100]!,
                        enabled: true,
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(6)),
                        ),
                      )
                    : const SizedBox()
              ],
            ),
          ),
        );
      },
      separatorBuilder: (ctx, index) {
        return kHeightTen;
      },
      itemCount: 10,
    );
  }
}
