  import 'package:dio/dio.dart';

Future<Response> getHttp() async {
    try {
      return await Dio().get(
          "https://sewcode-backend.onrender.com/api/v1/user/test/show-business");
    } catch (e) {
      throw e;
    }
  }