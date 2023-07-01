import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class ProfileCorrectionApiProvider {
  final Dio dio;
  final CookieManager cookieManager;

  ProfileCorrectionApiProvider(this.dio, this.cookieManager);
  Future<Either<String, Response>> sendCorrection(
      CorrectionModel correctionModel) async {
    dio.interceptors.add(cookieManager);

    try {
      final response = await dio.patch(ApiEndpoints.correctionPoint,
          data: correctionModel.toJson());
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
        return const Left('Something error 2');
      }
    } catch (e) {
      return const Left('Something Error3');
    }
  }
}
