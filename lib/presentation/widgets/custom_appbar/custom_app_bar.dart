import 'package:flutter/material.dart';
import 'package:shiftsync_admin/core/colors/background_colors.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      this.leading,
      this.title,
      this.trailing,
      this.bottom,
      this.bagroundColor = appBarColor});
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final Widget? bottom;
  final Color bagroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bagroundColor,
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Stack(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: Center(child: title),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [leading ?? kWidthFive, trailing ?? kWidthFive],
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottom ?? const SizedBox()
        ],
      ),
    );
  }
}
