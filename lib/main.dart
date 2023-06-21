import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shiftsync_admin/bussiness_logic/bloc/bloc/admin_sign_in_bloc.dart';
import 'package:shiftsync_admin/bussiness_logic/cubit/custom_bottom_navigation/custom_bottm_navigation_cubit.dart';
import 'package:shiftsync_admin/bussiness_logic/cubit/internet_connection_check/internet_connection_check_cubit.dart';
import 'package:shiftsync_admin/core/colors/background_colors.dart';

import 'presentation/routes/app_routes.dart';

late Directory tempDir;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  tempDir = await getTemporaryDirectory();
  runApp(ShiftSyncAdminApp(
    connectivity: Connectivity(),
    appRoutes: AppRoutes(),
  ));
}

class ShiftSyncAdminApp extends StatelessWidget {
  const ShiftSyncAdminApp(
      {super.key, required this.appRoutes, required this.connectivity});
  final AppRoutes appRoutes;
  final Connectivity connectivity;
  @override
  Widget build(BuildContext context) {
    AppRoutes appRoutes = AppRoutes();
    return MultiBlocProvider(
      providers: [
        BlocProvider<InternetConnectionCheckCubit>(
          create: (ctx) =>
              InternetConnectionCheckCubit(connectivity: connectivity),
        ),
        BlocProvider<CustomBottmNavigationCubit>(
          create: (ctx) => CustomBottmNavigationCubit(),
        ),
        BlocProvider<AdminSignInBloc>(
          create: (ctx) => AdminSignInBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: customPrimaryColor,
          scaffoldBackgroundColor: scafoldBackgroundColor,
        ),
        onGenerateRoute: appRoutes.onGenerateRoute,
      ),
    );
  }
}
