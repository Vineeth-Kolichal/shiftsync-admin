import 'package:get_it/get_it.dart';
import 'package:shiftsync_admin/util/dio_object/dio_object.dart';

GetIt locator = GetIt.instance;

Future<void> configureInjection() async {
  locator.registerLazySingleton<DioObject>(() => DioObject());
}
