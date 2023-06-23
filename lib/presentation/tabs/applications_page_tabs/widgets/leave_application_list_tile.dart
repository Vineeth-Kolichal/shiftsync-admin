// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shiftsync_admin/data/models/leave_requests_model/leave_request.dart';
import 'package:shiftsync_admin/presentation/widgets/submit_button.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class LeaveApplicationListTile extends StatelessWidget {
  const LeaveApplicationListTile({super.key, required this.leaveRequest});
  final LeaveRequest leaveRequest;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: customPrimaryColor,
          width: 0.5,
        ),
        color: kWhitebackground,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(children: [
        ListTile(
          title: Text(leaveRequest.name ?? 'Name'),
          subtitle: Text(leaveRequest.leavetype ?? 'leave type'),
        ),
        Theme(
          data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: Text(
              'More details',
            ),
            children: [
              Builder(
                builder: (BuildContext context) {
                  return Container(
                    padding: const EdgeInsets.all(24),
                    alignment: Alignment.center,
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitileText(title: 'From Date:'),
                          Text(leaveRequest.fromdate ?? 'From date')
                        ],
                      ),
                      kHeightTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitileText(title: 'To Date:'),
                          Text(leaveRequest.todate ?? 'To date')
                        ],
                      ),
                      kHeightTen,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TitileText(title: 'Reason:'),
                          SizedBox(
                            width: size.width * 0.5,
                            child: Text(
                              leaveRequest.reason ?? 'reason',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 20,
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      ),
                      kHeightTen,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SubmitButton(
                            onPressed: () {},
                            label: 'Reject',
                            buttonColor: Colors.red,
                            borderRadius: 20,
                            width: 0.3,
                          ),
                          kWidthFive,
                          SubmitButton(
                            onPressed: () {},
                            label: 'Approve',
                            buttonColor: Colors.green,
                            borderRadius: 20,
                            width: 0.3,
                          )
                        ],
                      )
                    ]),
                  );
                },
              ),
            ],
          ),
        )
      ]),
    );
  }
}
