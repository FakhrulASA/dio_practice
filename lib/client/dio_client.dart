import 'package:dio/dio.dart';
import 'package:dio_logging_interceptor/dio_logging_interceptor.dart';


class DioClient {
  Dio initDio(String baseUrl) {
    BaseOptions baseOptions = BaseOptions(
        baseUrl: baseUrl,
        responseType: ResponseType.plain,
        connectTimeout: 1000);

    Dio dio = Dio(baseOptions);


    dio.interceptors.add(
      DioLoggingInterceptor(level: Level.body, compact: false),
    );

    return dio;
  }
}
