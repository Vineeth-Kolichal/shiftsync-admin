import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/add_edit_salary/add_edit_salary_bloc.dart';
import 'package:shiftsync_admin/data/models/all_employees_model/employee.dart';
import 'package:shiftsync_admin/presentation/screens/add_edit_salary_details/add_edit_salary_detials.dart';
import 'package:shiftsync_admin/presentation/widgets/bold_title_text.dart';
import 'package:shiftsync_admin/presentation/widgets/title_text.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class AddEditSalaryDetails extends StatelessWidget {
  const AddEditSalaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AddEditSalaryBloc>().add(const GetEmployeeList());
    });
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: BlocBuilder<AddEditSalaryBloc, AddEditSalaryState>(
        builder: (context, state) {
          if (state.isLoading) {
            const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state.allEmployee.isEmpty) {
            return const Center(
              child: Text('No Employees found'),
            );
          }
          return ListView.separated(
              itemBuilder: (ctx, index) {
                return SalaryAddEditItemTile(
                  salaryNotAddedEmployeeList:
                      state.salaryNotAddedEmployeeIdList,
                  employee: state.allEmployee[index],
                );
              },
              separatorBuilder: (ctx, index) {
                return kHeightTen;
              },
              itemCount: state.allEmployee.length);
        },
      ),
    );
  }
}

class SalaryAddEditItemTile extends StatelessWidget {
  const SalaryAddEditItemTile({
    super.key,
    required this.employee,
    required this.salaryNotAddedEmployeeList,
  });
  final Employee employee;
  final List<int> salaryNotAddedEmployeeList;
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
          color: kWhitebackground, borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              height: 40,
              width: 40,
              child: Center(child: Text('${employee.id}')),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BoldTitleText(title: employee.name ?? 'Name'),
                      TitileText(title: employee.designation ?? 'Designation')
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((ctx) => AddEditSalaryDetailsScreen(
                                id: employee.id!,
                                isAdd: (salaryNotAddedEmployeeList
                                    .contains(employee.id)),
                              ))));
                      log('add');
                    },
                    child: CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 238, 236, 236),
                      child: Icon(
                        (salaryNotAddedEmployeeList.contains(employee.id))
                            ? Iconsax.add
                            : Iconsax.edit,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
