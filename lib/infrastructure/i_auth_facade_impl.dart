import 'dart:ui';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tailme/domain/Login/model/login_response_model.dart';
import 'package:tailme/domain/RegisterUser/model/user_register_model.dart';
import 'package:tailme/infrastructure/RegisterUser/repository/register_usr_repo.dart';
import 'package:tailme/infrastructure/i_auth_facade.dart';
import 'package:tailme/domain/Login/auth_failure.dart';
import 'package:tailme/domain/Login/model/user_login_model.dart';
import 'package:tailme/infrastructure/Login/repository/auth_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthFacadeImpl implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required emailAddress,
    required password,
  }) async {
    try {
      //apical
      final user = UserLogin(email: emailAddress, password: password);
      final response = await AuthRepository.login(user);
      debugPrint(response.toString());
      if (response.status == "success") {
        debugPrint(response.status);

//sharedPreferences code
        sharedPref(response);

        return right(unit);
      } else {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass,
    required String userName,
  }) async {
    try {
      var userData = RegisterUserModel(
        email: email,
        password: pass,
        confirmPassword: cpass,
        userName : userName
      );
      final response = await RegisterUsrRepo.registerUser(userData);
      if (response.status == "success") {
        debugPrint(response.status);
        return right(unit);
      } else {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
    } catch (e) {
      return left(const AuthFailure.serverError());
    }
  }
}

Future<void> sharedPref(LoginResponse response) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setString('token', response.token);
}
