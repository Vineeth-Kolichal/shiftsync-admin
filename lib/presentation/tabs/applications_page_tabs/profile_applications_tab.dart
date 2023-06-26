import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/profile_reg_form/profile_reg_form_bloc.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';
import 'package:shiftsync_admin/data/models/profile_registration_application_model/form.dart';
import 'package:shiftsync_admin/presentation/widgets/loading_shimmer.dart';

import 'widgets/profile_application_list_tile.dart';

class ProfileApplicationsTab extends StatelessWidget {
  const ProfileApplicationsTab({super.key});

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

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
                  return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieBuilder.asset(
                      width: size.width * 0.5,
                      'assets/lottie_jsons/search_empty.json'),
                  kHeightTen,
                  const Text('No leave applications found'),
                ],
              );
                }
                return ProfileApplicationListTile(
                  forms: forms,
                  index: index,
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
