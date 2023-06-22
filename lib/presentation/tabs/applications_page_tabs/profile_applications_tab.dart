import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/profile_reg_form/profile_reg_form_bloc.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/form.dart';
import 'package:shiftsync_admin/presentation/screens/profile_application_view_screen/profile_application_view_screen.dart';
import 'package:shiftsync_admin/presentation/widgets/loading_shimmer.dart';

class ProfileApplicationsTab extends StatelessWidget {
  const ProfileApplicationsTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<ProfileRegFormBloc>().add(ProfileRegFormEvent());
    });
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<ProfileRegFormBloc, ProfileRegFormState>(
        builder: (context, state) {
          
          if (state is ProfileRegFormResponseState &&
              state.profileRegistrationApplicationModel.msg == null) {
            if (state.profileRegistrationApplicationModel.status == 204) {
              return const Center(
                child: Text('No new applications found'),
              );
            }
            int? length =
                state.profileRegistrationApplicationModel.forms?.length;
            return ListView.separated(
              itemBuilder: (ctx, index) {
                List<Forms>? forms =
                    state.profileRegistrationApplicationModel.forms;
                if (forms == null) {
                  return const Center(
                    child: Text('No new applications found'),
                  );
                }
                return Container(
                  decoration: BoxDecoration(
                      color: kWhitebackground,
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    title: Text(
                        '${forms[index].firstname} ${forms[index].lastname}'),
                    subtitle: Text('ID: $index'),
                    trailing: IconButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (((context) =>
                                  ProfileApplicationViewScreen(
                                      forms: forms[index])))));
                        },
                        icon: const Icon(Iconsax.eye)),
                  ),
                );
              },
              separatorBuilder: (ctx, index) {
                return kHeightTen;
              },
              itemCount: length!,
            );
          }
          return const LoadingShimmer(
            showTrailing: true,
          );
        },
      ),
    );
  }
}
