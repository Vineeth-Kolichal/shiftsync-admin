import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/tabs/salary_page_tabs/add_edit_salary_details_tab.dart';
import 'package:shiftsync_admin/presentation/tabs/salary_page_tabs/salary_transactions_tab.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';

class SalaryDetailsPage extends StatelessWidget {
  const SalaryDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: SafeArea(
            child: CustomAppBar(
              bagroundColor: Colors.transparent,
              title: const Text(
                'Salary Pay details',
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
              bottom: TabBar(
                labelColor: labelWhiteColor,
                unselectedLabelColor: labalerBlackColor,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: customPrimaryColor,
                ),
                tabs: const [
                  Tab(
                    height: 34,
                    text: 'Add/Edit Salary details',
                  ),
                  Tab(
                    height: 34,
                    text: 'Salary Transactions',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [AddEditSalaryDetails(), SalaryTransactionsTab()]),
      ),
    );
  }
}
