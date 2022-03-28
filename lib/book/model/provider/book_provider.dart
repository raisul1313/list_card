import 'dart:convert';

import 'package:custom_list_card/book/model/dto/books.dart';
import 'package:flutter/services.dart';

import '../../../api/base_api_provider.dart';
import '../../../api/dio_exception.dart';

class BookProvider extends BaseApiProvider {
   Future<List<Book>> getBookItem() async {
    try {
      String data = await rootBundle.loadString('assets/json/book_collections.json');
      return (json.decode(data) as List)
          .map((report) => Book.fromJson(report))
          .toList();
    } catch (error) {
      return Future.error(DioException.getDioException(error));
    }
  }

 /* Future<OtpVerifyResponse> otpVerify(String otp, String userName) async {
    try {
      addBasicAuth();
      final response = await dio.post(
          ApiProvider.verifyOtpApi+otp+"&userName="+userName
      );
      return OtpVerifyResponse.fromJson(response.data);
    } catch (error) {
      return Future.error(DioException.getDioException(error));
    }
  }*/
}