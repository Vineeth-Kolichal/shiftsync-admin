import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class AllEmployeeApiProvider {
  Dio dio = GetIt.instance<DioObject>().returnDioObject();
  Future<Either<int, Response>> getAllEmployeesRawData() async {
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
}
