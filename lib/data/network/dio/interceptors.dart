import 'dart:async';
import 'package:dio/dio.dart';


class AppInterceptors extends Interceptor {

  @override
  FutureOr<dynamic> onResponse(Response response, ResponseInterceptorHandler handler) async {
    super.onResponse(response, handler);
    return DioException(requestOptions: response.requestOptions);
  }
}

Dio addInterceptor(Dio dio){
  return dio..interceptors.add(AppInterceptors());
}



