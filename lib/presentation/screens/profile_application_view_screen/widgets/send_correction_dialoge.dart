import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/approve_profile_application/approve_profile_application_bloc.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';

AlertDialog sendCorrection(
    {required BuildContext ctx,
    required int id,
    required BuildContext context}) {
  final formKey = GlobalKey<FormState>();
  TextEditingController correctionController = TextEditingController();
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    title: const Text("Corrections"),
    content: Form(
      key: formKey,
      child: TextFormField(
        controller: correctionController,
        keyboardType: TextInputType.text,
        decoration: const InputDecoration(hintText: 'Enter the corrections'),
      ),
    ),
    actions: [
      TextButton(
        onPressed: () {
          Navigator.of(ctx).pop();
        },
        child: const Text('Cancel'),
      ),
      SubmitButton(
        onPressed: () {
          if (formKey.currentState!.validate()) {
            CorrectionModel correctionModel = CorrectionModel(
                empid: id, correction: correctionController.text);
            context.read<ApproveCorrectProfileBloc>().add(
                CorrectionApplicationEvent(correctionModel: correctionModel));
            Navigator.of(ctx).pop();
          }
        },
        label: 'Send',
        borderRadius: 20,
        width: 0.2,
      )
    ],
  );
}
