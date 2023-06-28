import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/data/models/duty_schdule_model/duty_schdule_model.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class ScheduleDutyApiProvider {
  Future<Either<String, Response>> scheduleDuty(
      DutyScheduleModel scheduleModel) async {
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
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
