import 'dart:io';
import 'package:dio/dio.dart';
import 'dio_client.dart';

class BaseApiProvider {
  late DioClient _dioClient;
  late String _basicAuth;

  BaseApiProvider() {
    var dio = Dio();
    _dioClient = DioClient(dio);
  }

  Dio get dio => _dioClient.clientDio!;

  // addBasicAuth() {
  //   _basicAuth = 'Bearer ' + sharedPrefs.token!;
  //   print(_basicAuth);
  //   dio.options.headers[HttpHeaders.authorizationHeader] = _basicAuth;
  // }
}
