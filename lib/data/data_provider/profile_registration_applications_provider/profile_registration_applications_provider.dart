import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:shiftsync_admin/core/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/core/constants/api_endpoints/persistent_cookiejar.dart';

class ProfileRegistrationsApplicationsProvider {
  Dio dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
  Future<Either<String, Response<dynamic>>> getProfileApplications() async {
    dio.interceptors.add(CookieManager(cookieJar));
    try {
      final response = await dio.get(ApiEndpoints.applicationEndPoint);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return left('Something Error');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        return Right(e.response!);
      } else {
        return const Left('Something Error');
      }
    } catch (e) {
      return const Left('Something error');
    }
  }
}
