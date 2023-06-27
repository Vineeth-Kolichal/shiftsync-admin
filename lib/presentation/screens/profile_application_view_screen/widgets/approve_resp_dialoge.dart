import 'package:flutter/material.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/approve_profile_application/approve_profile_application_bloc.dart';

void approveRespoDialoge(
    {required BuildContext context, required ApproveResponseState state}) {
  String allErrorMsg = '';
  List<String> errors = [];
  errors.addAll(state.applicationResponse.errors ?? ['']);
  for (var i = 0; i < errors.length; i++) {
    allErrorMsg = '$allErrorMsg \n ${i + 1}.${errors[i]}';
  }
  showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: const Text('Correction!'),
          content: Text(allErrorMsg),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: const Text('close')),
          ],
        );
      });
}
