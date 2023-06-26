import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class ApproveProfileFormApi {
  // Dio dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
  Future<Either<String, Response>> approveProfile(
      {required ApproveApplicationModel approveApplication}) async {
    // dio.interceptors.add(CookieManager(cookieJar));
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
    try {
      final response = await dio.post(ApiEndpoints.approveApplicationPoint,
          data: {"id": approveApplication.id});
      if (response.statusCode == 201 || response.statusCode == 200) {
        return Right(response);
      } else {
        log('qwer1111111111111');
        return const Left('Something error');
      }
    } on DioException catch (e) {
      log(e.response!.statusCode.toString());
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        log(e.response.toString());
        return const Left('Something Error');
      }
    } catch (e) {
      log('kkkkkkkkkkkkkkkkkkkkkk');
      return const Left('Something Error');
    }
  }
}
