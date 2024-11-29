import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String email,
      required String pass,
      required String cpass,
      required String userName});
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  });

  Future<Either<AuthFailure, Unit>> otpVerification({
    required String otp,
    required String email,
  });

  Future<Either<AuthFailure, Unit>> resendOtp({required String email});

  Future<Either<AuthFailure, Unit>> forgetPassword({required String email});

  Future<Either<AuthFailure, String>> otpVerificationForReset({
    required String otp,
    required String email,
  });

  Future<Either<AuthFailure, Unit>> resetPassword(
      {required String email,
      required String passwordResetToken,
      required String newPassword,
      required String confirmPassword});

  Future<Either<AuthFailure, Unit>> changePassowordWithOldPassword({
    required String email,
    required String oldPassword,
    required String newPassword,
    required String reNewPassword,
  });
}
