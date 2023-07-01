import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class LeaveRequestsProvider {
  final Dio dio;
  final CookieManager cookieManager;

  LeaveRequestsProvider(this.dio, this.cookieManager);
  Future<Either<String, Response>> getLeaveRequestFromApi() async {
    dio.interceptors.add(cookieManager);

    //  dio.interceptors.add(CookieManager(cookieJar));

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
