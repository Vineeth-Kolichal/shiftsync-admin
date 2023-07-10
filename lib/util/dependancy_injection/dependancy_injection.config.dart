// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i8;
import 'package:dio_cookie_manager/dio_cookie_manager.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shiftsync_admin/bussiness_logic/bloc/add_edit_salary/add_edit_salary_bloc.dart'
    as _i18;
import 'package:shiftsync_admin/bussiness_logic/bloc/dashboard/dashboard_bloc.dart'
    as _i24;
import 'package:shiftsync_admin/bussiness_logic/bloc/salary_add_edit_screen/add_edit_salary_screen_bloc.dart'
    as _i5;
import 'package:shiftsync_admin/bussiness_logic/bloc/transaction_tab/transaction_tab_bloc.dart'
    as _i25;
import 'package:shiftsync_admin/data/data_provider/add_edit_salary/add_edit_salary_emp_list_api.dart'
    as _i19;
import 'package:shiftsync_admin/data/data_provider/admin_signin_providers/admin_signin_providers.dart'
    as _i20;
import 'package:shiftsync_admin/data/data_provider/all_employees_api_provider/all_employees_api_provider.dart'
    as _i21;
import 'package:shiftsync_admin/data/data_provider/approve_leave_api_provider/approve_leave_api_provider.dart'
    as _i22;
import 'package:shiftsync_admin/data/data_provider/approve_profile_form/approve_profile_form.dart'
    as _i23;
import 'package:shiftsync_admin/data/data_provider/leave_requests_provider/leave_request_provider.dart'
    as _i9;
import 'package:shiftsync_admin/data/data_provider/profile_correction/profile_correction.dart'
    as _i11;
import 'package:shiftsync_admin/data/data_provider/profile_registration_applications_provider/profile_registration_applications_provider.dart'
    as _i13;
import 'package:shiftsync_admin/data/data_provider/reject_leave_api_provider/reject_leave_api_provider.dart'
    as _i14;
import 'package:shiftsync_admin/data/data_provider/schedule_duty_api_provider/schedule_duty_api_provider.dart'
    as _i15;
import 'package:shiftsync_admin/data/data_provider/transations_api_provider/transations_api_provider.dart'
    as _i16;
import 'package:shiftsync_admin/data/repositories/add_edit_salary_repo/add_edit_salary_repo.dart'
    as _i4;
import 'package:shiftsync_admin/data/repositories/all_employees_repo/all_employees_repo.dart'
    as _i6;
import 'package:shiftsync_admin/data/repositories/leave_requests_repo/leave_request_repo.dart'
    as _i10;
import 'package:shiftsync_admin/data/repositories/profile_registration_forms_repository/profile_registration_forms_repository.dart'
    as _i12;
import 'package:shiftsync_admin/data/repositories/repositories.dart' as _i3;
import 'package:shiftsync_admin/data/repositories/transaction_repo/transactions_repo_implementation.dart'
    as _i17;
import 'package:shiftsync_admin/util/dio_object/dio_object.dart' as _i26;

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
    gh.lazySingleton<_i3.AddEditSalaryRepository>(
        () => _i4.AddEditSalaryRepo());
    gh.factory<_i5.AddEditSalaryScreenBloc>(
        () => _i5.AddEditSalaryScreenBloc(gh<_i3.AddEditSalaryRepository>()));
    gh.lazySingleton<_i3.AllEmployeesRepository>(() => _i6.AllEmployeesRepo());
    gh.lazySingleton<_i7.CookieManager>(() => dioModule.cookieManager);
    gh.lazySingleton<_i8.Dio>(() => dioModule.dioInstance);
    gh.factory<_i9.LeaveRequestsProvider>(() => _i9.LeaveRequestsProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.lazySingleton<_i3.LeaveRequestsRepository>(
        () => _i10.LeaveRequestRepo());
    gh.factory<_i11.ProfileCorrectionApiProvider>(
        () => _i11.ProfileCorrectionApiProvider(
              gh<_i8.Dio>(),
              gh<_i7.CookieManager>(),
            ));
    gh.lazySingleton<_i3.ProfileRegistrationFormsRepository>(
        () => _i12.ProfileRegistrationFormsRepo());
    gh.factory<_i13.ProfileRegistrationsApplicationsProvider>(
        () => _i13.ProfileRegistrationsApplicationsProvider(
              gh<_i8.Dio>(),
              gh<_i7.CookieManager>(),
            ));
    gh.factory<_i14.RejectLeaveApiProvider>(() => _i14.RejectLeaveApiProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i15.ScheduleDutyApiProvider>(() => _i15.ScheduleDutyApiProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i16.TransactionsApiProvider>(() => _i16.TransactionsApiProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.lazySingleton<_i3.TransactionsRepository>(
        () => _i17.TransactionsRepoImplementation());
    gh.factory<_i18.AddEditSalaryBloc>(
        () => _i18.AddEditSalaryBloc(gh<_i3.AddEditSalaryRepository>()));
    gh.factory<_i19.AddEditSalarytApi>(() => _i19.AddEditSalarytApi(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i20.AdminSignInProvider>(() => _i20.AdminSignInProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i21.AllEmployeeApiProvider>(() => _i21.AllEmployeeApiProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i22.ApproveLeaveApiProvider>(() => _i22.ApproveLeaveApiProvider(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i23.ApproveProfileFormApi>(() => _i23.ApproveProfileFormApi(
          gh<_i8.Dio>(),
          gh<_i7.CookieManager>(),
        ));
    gh.factory<_i24.DashboardBloc>(() => _i24.DashboardBloc(
          gh<_i3.AllEmployeesRepository>(),
          gh<_i3.LeaveRequestsRepository>(),
          gh<_i3.ProfileRegistrationFormsRepository>(),
        ));
    gh.factory<_i25.TransactionTabBloc>(
        () => _i25.TransactionTabBloc(gh<_i3.TransactionsRepository>()));
    return this;
  }
}

class _$DioModule extends _i26.DioModule {}
