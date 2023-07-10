import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';

@injectable
class ApproveProfileFormApi {
  final Dio dio;
  final CookieManager cookieManager;

  ApproveProfileFormApi(this.dio, this.cookieManager);
  Future<Either<String, Response>> approveProfile(
      {required ApproveApplicationModel approveApplication}) async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.post(ApiEndpoints.approveApplicationPoint,
          data: approveApplication.toJson());
      if (response.statusCode == 201 || response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something error');
      }
    } on DioException catch (e) {
      log(e.toString());
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left('Something Error');
      }
    } catch (e) {
      return const Left('Something Error');
    }
  }
}
