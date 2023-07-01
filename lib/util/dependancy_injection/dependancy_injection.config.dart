// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:dio_cookie_manager/dio_cookie_manager.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shiftsync_admin/bussiness_logic/bloc/dashboard/dashboard_bloc.dart'
    as _i18;
import 'package:shiftsync_admin/data/data_provider/admin_signin_providers/admin_signin_providers.dart'
    as _i14;
import 'package:shiftsync_admin/data/data_provider/all_employees_api_provider/all_employees_api_provider.dart'
    as _i15;
import 'package:shiftsync_admin/data/data_provider/approve_leave_api_provider/approve_leave_api_provider.dart'
    as _i16;
import 'package:shiftsync_admin/data/data_provider/approve_profile_form/approve_profile_form.dart'
    as _i17;
import 'package:shiftsync_admin/data/data_provider/leave_requests_provider/leave_request_provider.dart'
    as _i7;
import 'package:shiftsync_admin/data/data_provider/profile_correction/profile_correction.dart'
    as _i9;
import 'package:shiftsync_admin/data/data_provider/profile_registration_applications_provider/profile_registration_applications_provider.dart'
    as _i11;
import 'package:shiftsync_admin/data/data_provider/reject_leave_api_provider/reject_leave_api_provider.dart'
    as _i12;
import 'package:shiftsync_admin/data/data_provider/schedule_duty_api_provider/schedule_duty_api_provider.dart'
    as _i13;
import 'package:shiftsync_admin/data/repositories/all_employees_repo/all_employees_repo.dart'
    as _i4;
import 'package:shiftsync_admin/data/repositories/leave_requests_repo/leave_request_repo.dart'
    as _i8;
import 'package:shiftsync_admin/data/repositories/profile_registration_forms_repository/profile_registration_forms_repository.dart'
    as _i10;
import 'package:shiftsync_admin/data/repositories/repositories.dart' as _i3;
import 'package:shiftsync_admin/util/dio_object/dio_object.dart' as _i19;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final dioModule = _$DioModule();
    gh.lazySingleton<_i3.AllEmployeesRepository>(() => _i4.AllEmployeesRepo());
    gh.lazySingleton<_i5.CookieManager>(() => dioModule.cookieManager);
    gh.lazySingleton<_i6.Dio>(() => dioModule.dioInstance);
    gh.factory<_i7.LeaveRequestsProvider>(() => _i7.LeaveRequestsProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.lazySingleton<_i3.LeaveRequestsRepository>(() => _i8.LeaveRequestRepo());
    gh.factory<_i9.ProfileCorrectionApiProvider>(
        () => _i9.ProfileCorrectionApiProvider(
              gh<_i6.Dio>(),
              gh<_i5.CookieManager>(),
            ));
    gh.lazySingleton<_i3.ProfileRegistrationFormsRepository>(
        () => _i10.ProfileRegistrationFormsRepo());
    gh.factory<_i11.ProfileRegistrationsApplicationsProvider>(
        () => _i11.ProfileRegistrationsApplicationsProvider(
              gh<_i6.Dio>(),
              gh<_i5.CookieManager>(),
            ));
    gh.factory<_i12.RejectLeaveApiProvider>(() => _i12.RejectLeaveApiProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i13.ScheduleDutyApiProvider>(() => _i13.ScheduleDutyApiProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i14.AdminSignInProvider>(() => _i14.AdminSignInProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i15.AllEmployeeApiProvider>(() => _i15.AllEmployeeApiProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i16.ApproveLeaveApiProvider>(() => _i16.ApproveLeaveApiProvider(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i17.ApproveProfileFormApi>(() => _i17.ApproveProfileFormApi(
          gh<_i6.Dio>(),
          gh<_i5.CookieManager>(),
        ));
    gh.factory<_i18.DashboardBloc>(() => _i18.DashboardBloc(
          gh<_i3.AllEmployeesRepository>(),
          gh<_i3.LeaveRequestsRepository>(),
          gh<_i3.ProfileRegistrationFormsRepository>(),
        ));
    return this;
  }
}

class _$DioModule extends _i19.DioModule {}
