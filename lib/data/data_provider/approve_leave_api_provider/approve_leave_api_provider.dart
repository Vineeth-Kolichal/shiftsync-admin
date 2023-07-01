import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class ApproveLeaveApiProvider {
  final Dio dio;
  final CookieManager cookieManager;

  ApproveLeaveApiProvider(this.dio, this.cookieManager);
  Future<Either<String, Response>> approveLeave(
      {required ApproveApplicationModel applicationModel}) async {
    dio.interceptors.add(cookieManager);

    try {
      final response = await dio.patch(ApiEndpoints.approveLeavePoint,
          data: applicationModel.toJson());
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something error1');
      }
    } on DioException catch (e) {
      log(e.toString());
      if (e.response?.statusCode == 400 && e.response != null) {
        return Right(e.response!);
      } else {
        return const Left('Something Error2');
      }
    } catch (e) {
      return const Left('Something Error3');
    }
  }
}
