import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/persistent_cookiejar.dart';

class DioObject {
  Dio dio = Dio(BaseOptions(
    baseUrl: ApiEndpoints.baseUrl,
  ));
  Dio returnDioObject() {
    dio.interceptors.add(CookieManager(cookieJar));
    return dio;
  }
}
