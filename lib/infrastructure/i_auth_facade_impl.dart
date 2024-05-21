import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tailme/domain/RegisterUser/model/user_register_model.dart';
import 'package:tailme/infrastructure/RegisterUser/repository/register_usr_repo.dart';
import 'package:tailme/infrastructure/i_auth_facade.dart';
import 'package:tailme/domain/Login/auth_failure.dart';
import 'package:tailme/domain/Login/model/user_login_model.dart';
import 'package:tailme/infrastructure/Login/repository/auth_repository.dart';

class AuthFacadeImpl implements IAuthFacade {
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required emailAddress, required password}) async {
    try {
      //apical
      final user = UserLogin(email: emailAddress, password: password);
      final response = await AuthRepository.login(user);
      debugPrint(response.toString());
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

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass
  }) async {
    try {
    var userData = RegisterUserModel(
        email: email,
        password: pass,
        confirmPassword: cpass,
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
