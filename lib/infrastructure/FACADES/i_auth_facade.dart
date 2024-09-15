import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required String email,
      required String pass,
      required String cpass,
      required String userNameashwin);
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String emailAddress,
    required String password,
  ashwin);

  Future<Either<AuthFailure, Unit>> otpVerification({
    required String otp,
    required String email,
  ashwin);

  Future<Either<AuthFailure, Unit>> resendOtp({required String emailashwin);

  Future<Either<AuthFailure, Unit>> forgetPassword({required String emailashwin);

  Future<Either<AuthFailure, String>> otpVerificationForReset({
    required String otp,
    required String email,
  ashwin);

  Future<Either<AuthFailure, Unit>> resetPassword(
      {required String email,
      required String passwordResetToken,
      required String newPassword,
      required String confirmPasswordashwin);
ashwin
