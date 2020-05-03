import 'package:dio/dio.dart';
import 'package:app_bloc_template/utilities/api_uris.dart';
import 'package:app_bloc_template/repositories/response_validator.dart';

class Api extends ResponseValidator {
  final Dio dio = Dio();
  final LogInterceptor logInterceptor =
      LogInterceptor(requestBody: true, responseBody: true);

  Api() {
    dio.options.baseUrl = ApiUris.BASE_URL;
    dio.interceptors.add(logInterceptor);
  }

  Future<Response> get(String path) async {
    Response get;

    get = await dio.get(path);
    checkError(get);

    return get;
  }

  Future<Response> post(String path, Map<String, dynamic> body) async {
    Response post;

    post = await dio.post(path, data: body);
    checkError(post);

    return post;
  }
}
