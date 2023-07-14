// Package imports:

import 'package:dio/dio.dart';

class DioExceptions implements Exception {
  late String message;


  DioExceptions.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.cancel:
        message = 'Request to API server was cancelled';
        break;
      case DioExceptionType.connectionTimeout:
        message = 'Connection timeout with API server';
        break;
      case DioExceptionType.receiveTimeout:
        message = 'Receive timeout in connection with API server';
        break;
      case DioExceptionType.badResponse:
        message = _handleError(
          dioError.response?.statusCode,
          dioError.response?.data,
        );
        break;
      case DioExceptionType.sendTimeout:
        message = 'Send timeout in connection with API server';
        break;
      case DioExceptionType.unknown:
        message = 'Unexpected error occurred';
        break;
      default:
        message = 'Something went wrong';
        break;
    }
  }

  String _handleError(int? statusCode, dynamic error) {
    switch (statusCode) {
      case 400:
        return error['message'].runtimeType == List ? error['message'][0]: error['message'].toString();
      case 401:
        return error['message'].toString();
      case 403:
        return error['message'].toString();
         case 404:
           return error['message'].toString();
      case 409:
        return error['message'].toString();
         case 410:
        return error['message'].toString();
        case 415:
        return error['message'].toString();

         case 422:
           return error['message'].toString();
      case 500:
        return error['message'].toString();
      case 502:
        return error['message'].toString();
      default:
        return 'Oops something went wrong';
    }
  }

  @override
  String toString() => message;
}
