import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/data/models/approve_application_model/approve_application.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

class RejectLeaveApiProvider {
  Future<Either<String, Response>> rejectLeaveAppliaction(
      ApproveApplicationModel applicationModel) async {
    Dio dio = GetIt.instance<DioObject>().returnDioObject();
    try {
      final response = await dio.patch(ApiEndpoints.rejectLeavePoint,
          data: applicationModel.toJson());
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something Error 1');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400 && e.response != null) {
        return Right(e.response!);
      } else {
        return const Left('Something Error2');
      }
    } catch (e) {
      return const Left('Something Error3');
    }
  }
}
