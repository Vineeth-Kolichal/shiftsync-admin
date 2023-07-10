import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/data/models/salary_add_edit_model/salary_add_edit_model.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class AddEditSalarytApi {
  final Dio dio;
  final CookieManager cookieManager;
  AddEditSalarytApi(this.dio, this.cookieManager);
  Future<Either<String, Response>> getAllEmpList() async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.get(ApiEndpoints.getEmpsForSalary);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something went wrong1');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 202) {
        return Right(e.response!);
      } else {
        return const Left('Something went wrong2');
      }
    } catch (e) {
      return const Left('Something went wrong2');
    }
  }

  Future<Either<String, Response>> addSalaryDetails(
      SalaryAddEditModel salaryAddEditModel) async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.post(ApiEndpoints.addSalary,
          data: salaryAddEditModel.toJson());
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something went wrong1');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left('Something went wrong1');
      }
    } catch (e) {
      return const Left('Something went wrong1');
    }
  }

  Future<Either<String, Response>> updateSalaryDetails(
      SalaryAddEditModel salaryAddEditModel) async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.patch(ApiEndpoints.editSalary,
          data: salaryAddEditModel.toJson());
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left('Something went wrong1');
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left('Something went wrong1');
      }
    } catch (e) {
      return const Left('Something went wrong1');
    }
  }
}
