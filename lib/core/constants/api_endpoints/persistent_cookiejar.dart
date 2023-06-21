import 'package:cookie_jar/cookie_jar.dart';
import 'package:shiftsync_admin/main.dart';

final tempPath = tempDir.path;
final cookieJar = PersistCookieJar(
  ignoreExpires: true,
  storage: FileStorage(tempPath),
);
