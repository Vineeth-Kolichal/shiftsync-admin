import 'package:flutter/material.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/employee.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class EmployeeDetailsSectionWidget extends StatelessWidget {
  const EmployeeDetailsSectionWidget({
    super.key,
    required this.employee,
    required this.size,
  });

  final Employee employee;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: size.width * 0.3,
              child: const Divider(),
            ),
            const BoldTitleText(title: 'Employee details'),
            SizedBox(
              width: size.width * 0.3,
              child: const Divider(),
            ),
          ],
        ),
        // const Divider(),
        kHeightTen,
        EmpDetailRow(title: 'Employee Id :', value: '${employee.empid}'),
        EmpDetailRow(title: 'Name :', value: employee.name ?? 'Name'),
        EmpDetailRow(
            title: 'Gender :',
            value: (employee.gender?.toLowerCase() == 'm') ? 'Male' : 'Female'),
        EmpDetailRow(
            title: 'Date Of Birth :', value: employee.dateofbirth ?? 'DOB'),
        EmpDetailRow(title: 'email Id :', value: employee.email ?? 'email'),
        EmpDetailRow(title: 'Phone :', value: '${employee.phone}'),
        EmpDetailRow(
            title: 'Designation :',
            value: employee.designation ?? 'Designation'),
        kheightTwenty,
      ],
    );
  }
}

class EmpDetailRow extends StatelessWidget {
  const EmpDetailRow({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [TitileText(title: title), Text(value)],
      ),
    );
  }
}
