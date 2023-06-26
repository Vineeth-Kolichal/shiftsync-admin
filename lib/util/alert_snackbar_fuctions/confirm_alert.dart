import 'package:flutter/material.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

AlertDialog showConfirmAlert(
    {String title = 'Confirm',
    required String typeOfConfirmation,
    required Function()? confirmOnPressed,
    required BuildContext ctx}) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: Text(title),
    content:
        Text("Please click '$title' to $typeOfConfirmation the application"),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(ctx).pop();
        },
        child: const Text('Cancel'),
      ),
      kWidthFive,
      SubmitButton(
        onPressed: confirmOnPressed,
        label: 'Confirm',
        borderRadius: 20,
        width: 0.3,
      )
    ],
  );
}
