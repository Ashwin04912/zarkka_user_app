import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.invalidOtp() = InvalidOtp;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =  InvalidEmailAndPasswordCombination;
  const factory AuthFailure.invalidEmailFormat() = _invalidEmailFormat;
  const factory AuthFailure.otpExpired() = _otpExpired;
  const factory AuthFailure.passwordNotMatch() = _passwordNotMatch;
  
  
  
}
