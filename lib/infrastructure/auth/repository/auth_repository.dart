import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart'; // Make sure to add dartz package to your pubspec.yaml
import 'package:injectable/injectable.dart';
import 'package:tailme/domain/Login/auth_failure.dart';
import 'package:tailme/infrastructure/i_auth_facade.dart';
import 'package:tailme/infrastructure/string.dart';


@LazySingleton(as: IAuthFacade)
class AuthRepository implements IAuthFacade {
  // Response model should return

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass,
    required String userName,
  }) async {
    try {
      debugPrint(
          "EMAIL AND PWD $email $pass $cpass  $userName  ${'$baseUrl$userRegUrl'}");

      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "email": email,
        "password": pass,
        "confirmPassword": cpass,
        "username": userName
      });

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$userRegUrl',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      } else if (e.response != null) {
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const AuthFailure.serverError());
      } else if (e.response?.statusCode == 401) {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else if (e.response?.statusCode == 404) {
        return left(const AuthFailure.userNotFound());
      } else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.message}');
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required emailAddress, required password}) async {
    try {
      debugPrint(
          "EMAIL AND PWD $emailAddress $password ${'$baseUrl$userLogin'}");

      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "email": emailAddress,
        "password": password,
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
        return right(unit);
      } else {
        return left(const AuthFailure.serverError());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const AuthFailure.cancelledByUser());
      } else if (e.response != null) {
        if(e.response?.statusCode ==401){
          print("hello");
          return left(const AuthFailure.invalidEmailAndPasswordCombination());
        }
        else if (e.response?.statusCode == 404) {
        return left(const AuthFailure.userNotFound());
      }
        // Dio error with a response
        debugPrint(
            'Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const AuthFailure.serverError());
      } else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.message}');
        return left(const AuthFailure.serverError());
      }
    }
  }
}
