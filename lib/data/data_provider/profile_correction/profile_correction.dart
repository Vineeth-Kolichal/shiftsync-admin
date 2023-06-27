import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/data/models/correction_model/correction_model.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/persistent_cookiejar.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class ProfileCorrectionApiProvider {
  Future<Either<String, Response>> sendCorrection(
      CorrectionModel correctionModel) async {
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
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
