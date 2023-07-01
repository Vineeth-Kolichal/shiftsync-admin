import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/duty_schdule_model/duty_schdule_model.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class ScheduleDutyApiProvider {
  final Dio dio;
  final CookieManager cookieManager;

  ScheduleDutyApiProvider(this.dio, this.cookieManager);
  Future<Either<String, Response>> scheduleDuty(
      DutyScheduleModel scheduleModel) async {
    dio.interceptors.add(cookieManager);

    try {
      final respose = await dio.post(ApiEndpoints.scheduleDuty,
          data: scheduleModel.toJson());
      if (respose.statusCode == 200) {
        return Right(respose);
      } else {
        return const Left('Something error1');
      }
    } on DioException catch (e) {
      log(e.toString());
      log('${e.response?.data}');
      if (e.response?.statusCode == 500 || e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left('Something Error2');
      }
    } catch (e) {
      return const Left('Something Error3');
    }
  }
}
