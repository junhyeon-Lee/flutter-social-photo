import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart' as getx;
import '../safe_print.dart';
import 'dio_api.dart';



int productRegister = 0;

class DioCustomInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {


    safePrint('### REQUEST [method: ${options.method}] PATH: ${options.path}');
    safePrint('@@@header@@@:${options.headers}');
    safePrint('@@@bbodyy@@@:${options.data}');
    safePrint('@@@queryy@@@:${options.queryParameters}');

    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    safePrint(
      '### RESPONSE [status : ${response.statusCode}] PATH: ${response.requestOptions.path}',
    );
    safePrint(response.data);
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    safePrint('get error in Dio Error');

  }

  Future<Response<dynamic>> _retry(RequestOptions requestOptions) async {
    safePrint('api retry');
    final options = Options(
      method: requestOptions.method,
      headers: requestOptions.headers,
    );
    return await HttpService()
        .to()
        .request<dynamic>(requestOptions.path, data: requestOptions.data, queryParameters: requestOptions.queryParameters, options: options);
  }
}

emailProgress() {
  getx.Get.back;
}