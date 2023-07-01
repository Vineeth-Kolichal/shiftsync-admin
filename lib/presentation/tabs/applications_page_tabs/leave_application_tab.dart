import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/leave_requests/leave_request_bloc.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_request.dart';
import 'package:shiftsync_admin/presentation/tabs/applications_page_tabs/widgets/leave_application_list_tile.dart';
import 'package:shiftsync_admin/presentation/widgets/loading_shimmer.dart';
import 'package:shiftsync_admin/util/alert_snackbar_fuctions/response_message_snackbar.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class LeaveApplicationTab extends StatelessWidget {
  const LeaveApplicationTab({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LeaveRequestBloc>().add(LeaveRequestEvent());
    });
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocConsumer<LeaveRequestBloc, LeaveRequestState>(
        listener: (context, state) {
          if (state is LeaveApproveRespState) {
            ScaffoldMessenger.of(context).showSnackBar(responseMessageSnackbar(
                message: state.leaveApproveRespModel.message ?? 'Response',
                color: (state.leaveApproveRespModel.status == 200
                    ? Colors.green
                    : Colors.red)));
          }
          if (state is LeaveRejectRespState) {
            ScaffoldMessenger.of(context).showSnackBar(responseMessageSnackbar(
                message: state.leaveApproveRespModel.message ?? 'Response',
                color: (state.leaveApproveRespModel.status == 200
                    ? Colors.green
                    : Colors.red)));
          }
        },
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingShimmer(
              showTrailing: false,
            );
          } else {
            if (state is LeaveRequestResponseState &&
                state.leaveRequestsModel.leaveRequests != null &&
                state.leaveRequestsModel.leaveRequests!.isNotEmpty) {
              return ListView.separated(
                  itemBuilder: (ctx, index) {
                    LeaveRequest leaveRequest =
                        state.leaveRequestsModel.leaveRequests![index];
                    return LeaveApplicationListTile(
                      leaveRequest: leaveRequest,
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return kHeightTen;
                  },
                  itemCount: state.leaveRequestsModel.leaveRequests!.length);
            } else {
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
          }
        },
      ),
    );
  }
}
