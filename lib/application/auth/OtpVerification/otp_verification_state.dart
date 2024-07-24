part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> successOrfailure,
  }) = _OtpVerificationState;

  factory OtpVerificationState.initial() =>
      const OtpVerificationState(isSubmitting: false, successOrfailure: None());
}
