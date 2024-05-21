import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tailme/domain/Login/model/login_response_model.dart';
import 'package:tailme/domain/Login/model/user_login_model.dart';
import 'package:tailme/infrastructure/string.dart';

class AuthRepository {
  // response model should retrun
  static Future<LoginResponse> login(UserLogin user) async {
    try {
      debugPrint(
          "EMAIL AND PADD ${user.email} ${user.password} ${'$baseUrl$userLogin'}");
      // var data = json.encode();
      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "email": user.email,
        "password": user.password,
      });
      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$userLogin',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );
      if (response.statusCode == 200) {
        var resp = json.encode(response.data);
        return loginResponseFromJson(resp);
      } else {
        throw Exception();
      }
    } catch (error) {
      throw Exception();
    }
  }
}
