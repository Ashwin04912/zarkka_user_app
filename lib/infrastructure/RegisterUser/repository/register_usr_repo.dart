import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tailme/domain/RegisterUser/model/user_register_model.dart';
import 'package:tailme/domain/RegisterUser/model/response/user_register_response.dart';
import 'package:tailme/infrastructure/string.dart';

class RegisterUsrRepo {
  static Future<RegisterUserResponse> registerUser(
      RegisterUserModel user) async {
    try {
      debugPrint(
          "EMAIL AND PADD ${user.email} ${user.password} ${user.confirmPassword} ${'$baseUrl$regUser'}");
      // var data = json.encode();
      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "email": user.email,
        "password": user.password,
        "confirmPassword": user.confirmPassword
      });
      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$regUser',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );


      if (response.statusCode == 200) {
        debugPrint('success');
        var resp = json.encode(response.data);
        debugPrint(resp);
        return registerUserResponseFromJson(resp);
      } else {
        debugPrint('failed');
        debugPrint(response.data);
        throw Exception();
      }
    } catch (e) {
      debugPrint('catch');
        debugPrint('Error occurred: $e');
  throw Exception('Error occurred: $e');
    }
  }
}
