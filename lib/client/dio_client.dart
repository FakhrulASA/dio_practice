import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';


class DioClient {
  Dio initDio(String baseUrl) {
    BaseOptions baseOptions = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 1000);

    Dio dio = Dio(baseOptions);

    dio.options.headers["content-type"] = "application/json";
    dio.options.headers["X-RapidAPI-Key"] = "2fa7c38c08msh537f2b8945522bdp19dafajsn58891f2faa5e";
    dio.options.headers["X-RapidAPI-Host"] = "X-RapidAPI-Host";

    dio.interceptors.add(
      DioLoggingInterceptor(level: Level.body, compact: false),
    );

    return dio;
  }
}
