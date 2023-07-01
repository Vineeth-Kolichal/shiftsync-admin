import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/data/models/admin_sign_in_model/admin_sign_in_model.dart';
import 'package:shiftsync_admin/data/models/admin_sign_in_response_model/admin_sign_in_response_model.dart';

@injectable
class AdminSignInProvider {
  final Dio dio;
  final CookieManager cookieManager;
  AdminSignInProvider(this.dio, this.cookieManager);
  Future<AdminSignInResponseModel> adminSignIn(
      {required AdminSignInModel adminSignInModel}) async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.post(ApiEndpoints.signInPoint, data: {
        "username": adminSignInModel.username,
        "password": adminSignInModel.password
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        return AdminSignInResponseModel.fromJson(response.data);
      } else {
        return AdminSignInResponseModel(
            message: 'Sonething error', status: 404);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        log(e.toString());
        return AdminSignInResponseModel(
            message: e.response?.statusMessage, status: e.response?.statusCode);
      } else {
        return AdminSignInResponseModel(
            message: 'Sonething error', status: 404);
      }
    } catch (e) {
      return AdminSignInResponseModel(message: e.toString(), status: 404);
    }
  }
}
