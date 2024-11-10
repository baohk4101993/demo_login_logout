import 'package:demo_login_logout/core/config/i_config.dart';
import 'package:demo_login_logout/core/service/authentication_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';


@module
abstract class NetworkModule {

  @singleton
  Dio dio(IConfig config) {
    final dio = Dio();
    dio.options.headers = config.header;
    return dio;
  }
}