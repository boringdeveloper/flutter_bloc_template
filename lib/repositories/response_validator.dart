import 'package:dio/dio.dart';
import 'package:app_bloc_template/errors/standard_error.dart';

class ResponseValidator {
  void checkError(Response response) {
    if (response == null) throw StandardError(message: "Something went wrong");
    switch (response.statusCode) {
      case 200:
        if (response.data["state"] == "Error") {
          String errorMessage;
          try {
            errorMessage = response.data["msg"] ?? "Something went wrong";
          } catch (error) {
            errorMessage = "Something went wrong";
          }
          throw StandardError(message: errorMessage);
        }
        break;
      case 401:
        break;
      case 313:
        break;
      default:
        dynamic error;
        String errorMessage;
        try {
          error = response.data['error'] ?? {};
          errorMessage = error["message"] ?? "Something went wrong";
        } catch (error) {
          errorMessage = "Something went wrong";
        }
        throw StandardError(message: errorMessage);
        break;
    }
  }
}
