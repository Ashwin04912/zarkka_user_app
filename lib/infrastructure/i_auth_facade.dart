import 'package:dartz/dartz.dart';
import 'package:tailme/domain/auth/Login/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required String email,
    required String pass,
    required String cpass,
    required String userName
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure,Unit>> otpVerification({
    required String otp,
    required String email
  });

  Future<Either<AuthFailure,Unit>> resendOtp({
    
    required String email
  });
}
