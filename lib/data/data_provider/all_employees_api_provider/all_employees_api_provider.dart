import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class AllEmployeeApiProvider {
  final Dio dio;
  final CookieManager cookieManager;
  AllEmployeeApiProvider(this.dio, this.cookieManager);
  Future<Either<int, Response>> getAllEmployeesRawData() async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.get(ApiEndpoints.getAllEmployeesPoint);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left(0);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response?.data);
      } else {
        return const Left(1);
      }
    } catch (e) {
      return const Left(2);
    }
  }

  Future<Either<int, Response>> getUnscheduledEmployees() async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.get(ApiEndpoints.scheduleDuty);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left(0);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response?.data);
      } else {
        return const Left(1);
      }
    } catch (e) {
      return const Left(2);
    }
  }
}
