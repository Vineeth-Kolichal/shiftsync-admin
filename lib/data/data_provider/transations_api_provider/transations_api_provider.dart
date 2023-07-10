import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:shiftsync_admin/util/constants/api_endpoints/api_endpoints.dart';

@injectable
class TransactionsApiProvider {
  final Dio dio;
  final CookieManager cookieManager;

  TransactionsApiProvider(this.dio, this.cookieManager);
  Future<Either<int, Response>> getAllTransationsDetails() async {
    dio.interceptors.add(cookieManager);
    try {
      final response = await dio.get(ApiEndpoints.getTransactions);
      if (response.statusCode == 200) {
        return Right(response);
      } else {
        return const Left(402);
      }
    } on DioException catch (e) {
      if (e.response?.statusCode == 400) {
        return Right(e.response!);
      } else {
        return const Left(402);
      }
    } catch (e) {
      return const Left(402);
    }
  }
}
