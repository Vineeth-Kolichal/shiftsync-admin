import 'package:flutter/material.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';

class LeaveApplicationTab extends StatelessWidget {
  const LeaveApplicationTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text('name'),
          );
        },
        separatorBuilder: (ctx, index) {
          return kHeightTen;
        },
        itemCount: 20);
  }
}
