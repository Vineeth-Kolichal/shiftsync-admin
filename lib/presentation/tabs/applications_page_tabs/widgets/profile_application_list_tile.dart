import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/form.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/profile_application_view_screen.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';

class ProfileApplicationListTile extends StatelessWidget {
  const ProfileApplicationListTile({
    super.key,
    required this.forms,
    required this.index,
  });

  final List<Forms> forms;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: customPrimaryColor,
          width: 0.5,
        ),
        color: kWhitebackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        title: Text('${forms[index].firstname} ${forms[index].lastname}'),
        subtitle: Text('ID: ${forms[index].id}'),
        trailing: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (((context) =>
                      ProfileApplicationViewScreen(forms: forms[index])))));
            },
            icon: const Icon(Iconsax.eye)),
      ),
    );
  }
}
