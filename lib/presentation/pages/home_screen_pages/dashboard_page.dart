import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/presentation/screens/home_screen/widgets/logout_dialoge.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_appbar/custom_app_bar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: SafeArea(
          child: CustomAppBar(
            bagroundColor: Colors.transparent,
            title: Image.asset(
              'assets/images/title.png',
              width: size.width * 0.4,
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
    );
  }
}
