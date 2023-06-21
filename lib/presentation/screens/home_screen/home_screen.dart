import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/bussiness_logic/cubit/custom_bottom_navigation/custom_bottm_navigation_cubit.dart';
import 'package:shiftsync_admin/presentation/pages/home_screen_pages/applications_page.dart';
import 'package:shiftsync_admin/presentation/pages/home_screen_pages/dashboard_page.dart';
import 'package:shiftsync_admin/presentation/pages/home_screen_pages/employees_page.dart';
import 'package:shiftsync_admin/presentation/pages/home_screen_pages/salary_details_page.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_bottom_navigationbar/custom_bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> pages = [
    DashboardPage(),
    EmployeesPage(),
    ApplicationsPage(),
    SalaryDetailsPage()
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<CustomBottmNavigationCubit, CustomBottmNavigationState>(
      builder: (ctx, state) {
        return Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: Size.fromHeight(
          //       (state.selectedIndex == 1 || state.selectedIndex == 2)
          //           ? 100
          //           : 50),
          //   child: SafeArea(
          //     child: CustomAppBar(
          //       title: Image.asset(
          //         'assets/images/title.png',
          //         width: size.width * 0.4,
          //       ),
          //       trailing: InkWell(
          //         onTap: () {
          //           logout(context);
          //         },
          //         child: const SizedBox(
          //           height: 30,
          //           width: 30,
          //           child: Icon(
          //             Iconsax.logout_1,
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          body: pages[state.selectedIndex],
          bottomNavigationBar: const CustomBottomNavigationbar(),
        );
      },
    );
  }
}
