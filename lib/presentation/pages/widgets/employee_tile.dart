import 'package:flutter/material.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/employee.dart';
import 'package:shiftsync_admin/presentation/screens/employee_profile_screen/employee_profile_screen.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class EmployeeTile extends StatelessWidget {
  const EmployeeTile({super.key, required this.employee});
  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (ctx) => EmployeeProfileScreen(
                  employee: employee,
                )));
        print('object');
      },
      child: Container(
        decoration: BoxDecoration(
          color: kWhitebackground,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: customPrimaryColor, width: 0.2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BoldTitleText(title: employee.empid.toString()),
              ),
              kWidthFive,
              kWidthFive,
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BoldTitleText(title: employee.name ?? 'Name'),
                    kHeightTen,
                    TitileText(title: employee.designation ?? 'Designation'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
