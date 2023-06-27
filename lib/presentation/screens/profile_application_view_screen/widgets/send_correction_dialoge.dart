import 'package:flutter/material.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';

AlertDialog sendCorrection({required BuildContext ctx}) {
  TextEditingController correctionController = TextEditingController();
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("Corrections"),
    content: TextFormField(
      controller: correctionController,
      keyboardType: TextInputType.text,
      decoration: const InputDecoration(hintText: 'Enter the corrections'),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(ctx).pop();
        },
        child: const Text('Cancel'),
      ),
      SubmitButton(
        onPressed: () {},
        label: 'Send',
        borderRadius: 20,
        width: 0.2,
      )
    ],
  );
}
