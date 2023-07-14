import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:post/data/models/home/post_model.dart';

import '../../../core/log_service/log_service.dart';
import '../../network/dio/dio_error_exception.dart';
import '../../network/dio/endpoints.dart';
import '../../network/dio/interceptors.dart';

class PostService {
  static Future<Either<String, PostModel>> getPosts() async {
    Dio dio = addInterceptor(Dio());
    try {
      Response response = await dio.get(
        Endpoints.post,
      );
      if (response.statusCode == 200 || response.statusCode == 201) {
        PostModel data = PostModel.fromJson(response.data);
        return right(data);
      } else {
        Log.e(response.data['message'].toString());
        Log.e(DioExceptions.fromDioException(response.data).toString());
        return left(
            DioExceptions.fromDioException(response.data).toString());
      }
    } on DioException catch (e) {
      Log.e(DioExceptions.fromDioException(e).toString());
      Log.e(e.toString());
      return left(DioExceptions.fromDioException(e).toString());
    } catch (m) {
      Log.e(m.toString());
      return left(m.toString());
    }
  }
}