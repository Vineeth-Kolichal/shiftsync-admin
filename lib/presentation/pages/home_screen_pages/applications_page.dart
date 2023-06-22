import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/util/colors/background_colors.dart';
import 'package:shiftsync_admin/util/colors/common_colors.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/tabs/applications_page_tabs/leave_application_tab.dart';
import 'package:shiftsync_admin/presentation/tabs/applications_page_tabs/profile_applications_tab.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';

class ApplicationsPage extends StatelessWidget {
  const ApplicationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(86),
          child: SafeArea(
            child: CustomAppBar(
              bagroundColor: Colors.transparent,
              title: const Text(
                'Applications',
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
                    text: 'Leave Requests',
                  ),
                  Tab(
                    height: 34,
                    text: 'Profile Registrations',
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [LeaveApplicationTab(), ProfileApplicationsTab()]),
      ),
    );
  }
}
