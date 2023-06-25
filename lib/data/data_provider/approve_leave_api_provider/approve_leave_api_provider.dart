import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class ApproveLeaveApiProvider {
  Future<Either<String, Response>> approveLeave(
      {required ApproveApplicationModel applicationModel}) async {
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
    final response = await dio.patch(ApiEndpoints.approveLeavePoint,
        data: applicationModel.toJson());
    if (response.statusCode == 200) {
      return Right(response);
    } else {
      return const Left('Something error');
    }
  }
}
