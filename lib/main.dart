import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shiftsync_admin/application/cubit/custom_bottom_navigation/custom_bottm_navigation_cubit.dart';
import 'package:shiftsync_admin/core/colors/background_colors.dart';

import 'presentation/routes/app_routes.dart';

Future<void> main() async {
  runApp(ShiftSyncAdminApp(
    appRoutes: AppRoutes(),
  ));
}

class ShiftSyncAdminApp extends StatelessWidget {
  const ShiftSyncAdminApp({super.key, required this.appRoutes});
  final AppRoutes appRoutes;
  @override
  Widget build(BuildContext context) {
    AppRoutes appRoutes = AppRoutes();
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomBottmNavigationCubit>(
          create: (ctx) => CustomBottmNavigationCubit(),
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
