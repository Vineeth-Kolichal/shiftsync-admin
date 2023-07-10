import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:lottie/lottie.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/all_employees/all_employees_bloc.dart';
import 'package:shiftsync_admin/presentation/pages/widgets/employee_tile.dart';
import 'package:shiftsync_admin/presentation/pages/widgets/loading_screen.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/util/constants/constants_items/constant_items.dart';

class EmployeesPage extends StatelessWidget {
  const EmployeesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context.read<AllEmployeesBloc>().add(AllEmployeesEvent());
    });
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: CustomAppBar(
            bagroundColor: Colors.transparent,
            title: const Text(
              'Employees',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            trailing: InkWell(
              onTap: () {
                logout(context);
              },
              child: const SizedBox(
                height: 30,
                width: 30,
                child: Icon(
                  Iconsax.logout_1,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: BlocBuilder<AllEmployeesBloc, AllEmployeesState>(
          builder: (context, state) {
            if (state.isLoading) {
              return const EmployeeLoadingScreen();
            } else {}
            if (state is AllEmployeesDisplayState &&
                state.employeesModel.employees != null) {
              if (state.employeesModel.employees!.isEmpty) {
                return SizedBox(
                  height: size.height,
                  width: size.width,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LottieBuilder.asset(
                          width: size.width * 0.5,
                          'assets/lottie_jsons/search_empty.json'),
                      kHeightTen,
                      const Text('No leave applications found'),
                    ],
                  ),
                );
              } else {
                return ListView.separated(
                  itemBuilder: (ctx, index) {
                    return EmployeeTile(
                      unScheduledEmpList: state.unScheduledEmpIds,
                      employee: state.employeesModel.employees![index],
                    );
                  },
                  separatorBuilder: (ctx, index) {
                    return kHeightTen;
                  },
                  itemCount: state.employeesModel.employees!.length,
                );
              }
            } else {
              return const Center(
                child: Text('Something Error'),
              );
            }
          },
        ),
      ),
    );
  }
}
