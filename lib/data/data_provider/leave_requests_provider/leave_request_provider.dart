import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/persistent_cookiejar.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class LeaveRequestsProvider {
  // Dio dio = Dio(BaseOptions(baseUrl: ApiEndpoints.baseUrl));
  Future<Either<String, Response>> getLeaveRequestFromApi() async {
    //  dio.interceptors.add(CookieManager(cookieJar));
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
    try {
      final response = await dio.get(ApiEndpoints.leaveRequestsPoint);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Error occured');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left('Error occured');
      }
    } catch (e) {
      return const Left('Error occured');
    }
  }
}
