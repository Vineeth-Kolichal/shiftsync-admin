import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class RejectLeaveApiProvider {
  final Dio dio;
  final CookieManager cookieManager;

  RejectLeaveApiProvider(this.dio, this.cookieManager);
  Future<Either<String, Response>> rejectLeaveAppliaction(
      ApproveApplicationModel applicationModel) async {
    dio.interceptors.add(cookieManager);
    log('message');
    try {
      final response = await dio.patch(ApiEndpoints.rejectLeavePoint,
          data: applicationModel.toJson());
      if (response.statusCode == 200) {
        log('dfdfdfdf');
        return Right(response);
      } else {
        log('dfdfqqqqqqqqqqqqqqqdfd');
        return const Left('Something Error 1');
      }
    } on DioException catch (e) {
      log('dfdfxcvvdfdf');
      if (e.response?.statusCode == 400 && e.response != null) {
        return Right(e.response!);
      } else {
        return const Left('Something Error2');
      }
    } catch (e) {
      log('feererer');
      return const Left('Something Error3');
    }
  }
}
