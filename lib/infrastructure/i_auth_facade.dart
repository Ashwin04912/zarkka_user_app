import 'package:dartz/dartz.dart';
import 'package:tailme/domain/Login/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required emailAddress,
    required password,
  });
}
