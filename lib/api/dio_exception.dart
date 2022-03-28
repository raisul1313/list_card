import 'dart:io';

import 'package:dio/dio.dart';

class DioException {
  static String getDioException(error) {
    print(error);
    if (error is Exception) {
      try {
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
            case DioErrorType.connectTimeout:
            case DioErrorType.other:
            case DioErrorType.receiveTimeout:
            case DioErrorType.sendTimeout:
              return "Something went wrong. Please try again";
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                case 401:
                case 403:
                case 404:
                case 409:
                case 408:
                case 500:
                case 503:
                  return "Something went wrong. Please try again";
                default:
                  var responseCode = error.response?.statusCode;
                  return "Received invalid status code: $responseCode";
              }
          }
        } else if (error is SocketException) {
          return "Cant connect to Server. Please check your Internet connectivity";
        } else {
          return "Something went wrong. Please try again";
        }
      } on FormatException catch (formatException) {
        print(formatException.toString());
        return "Something went wrong. Please try again";
      } catch (_) {
        return "Something went wrong. Please try again";
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return "Something went wrong. Please try again";
      } else {
        return "Something went wrong. Please try again";
      }
    }
  }
}
