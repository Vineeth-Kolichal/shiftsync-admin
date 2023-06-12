import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shiftsync_admin/application/cubit/custom_bottom_navigation/custom_bottm_navigation_cubit.dart';
import 'package:shiftsync_admin/presentation/widgets/custom_app_bar.dart';

import '../../widgets/custom_bottom_navigationbar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List<Widget> pages = const [
    Center(
      child: Text('Dashboard'),
    ),
    Center(
      child: Text('Users'),
    ),
    Center(
      child: Text('requests'),
    ),
    Center(
      child: Text('Salay paid details'),
    )
  ];
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocBuilder<CustomBottmNavigationCubit, CustomBottmNavigationState>(
      builder: (ctx, state) {
        return Scaffold(
          key: scaffoldKey,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(50),
            child: SafeArea(
              child: CustomAppBar(
                title: Image.asset(
                  'assets/images/title.png',
                  width: size.width * 0.4,
                ),
                trailing: InkWell(
                  onTap: () {},
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
          body: pages[state.selectedIndex],
          bottomNavigationBar: const CustomBottomNavigationbar(),
        );
      },
    );
  }
}
