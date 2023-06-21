import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/core/colors/common_colors.dart';
import 'package:shiftsync_admin/core/constants/constants_items/constant_items.dart';

class ProfileApplicationsTab extends StatelessWidget {
  const ProfileApplicationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.separated(
          itemBuilder: (ctx, index) {
            return Container(
              decoration: BoxDecoration(
                  color: kWhitebackground,
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Text('name'),
                subtitle: Text('ID: $index'),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/profile_application');
                    },
                    icon: Icon(Iconsax.eye)),
              ),
            );
          },
          separatorBuilder: (ctx, index) {
            return kHeightTen;
          },
          itemCount: 20),
    );
  }
}
