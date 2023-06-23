import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/leave_requests/leave_request_bloc.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_request.dart';
import 'package:shiftsync_admin/presentation/tabs/applications_page_tabs/widgets/leave_application_list_tile.dart';
import 'package:shiftsync_admin/presentation/widgets/loading_shimmer.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class LeaveApplicationTab extends StatelessWidget {
  const LeaveApplicationTab({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<LeaveRequestBloc>().add(LeaveRequestEvent());
    });
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<LeaveRequestBloc, LeaveRequestState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const LoadingShimmer(
              showTrailing: false,
            );
          } else {
            if (state is LeaveRequestResponseState &&
                state.leaveRequestsModel.leaveRequests != null &&
                state.leaveRequestsModel.leaveRequests!.isNotEmpty) {
              log('${state.leaveRequestsModel.leaveRequests?[0].fromdate}');
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
              return Center(
                child: Text('No leave applications found'),
              );
            }
          }
        },
      ),
    );
  }
}
