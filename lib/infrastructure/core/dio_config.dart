import 'package:dio/dio.dart';
import 'package:logger/web.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioConfig {
  static final DioConfig _singleton = DioConfig._internal();

  factory DioConfig() {
    return _singleton;
  }
  DioConfig._internal();

  final Dio dio = Dio();

  void initInterceptors() {
    dio.options.headers = {"accept": "application/json"};

    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
          Logger().d('[onRequest] ${options.method} ${options.uri.path}');
          return handler.next(options);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          Logger().d('[onResponse] ${response.statusCode} ${response.data}');

          return handler.next(response);
        },
        onError: (DioException error, ErrorInterceptorHandler handler) {
          Logger().e(
              '[onError] ${error.response?.statusCode.toString() ?? ''} ${error.message ?? ''}');

          return handler.next(error);
        },
      ),
    );

    dio.interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
  }
}
