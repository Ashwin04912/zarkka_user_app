part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationState with _$OtpVerificationState {
  const factory OtpVerificationState({
    required bool isSubmitting,
    required bool isResendOtp,
    required bool isSubmit,
    required String resetPassToken,
    required Option<Either<AuthFailure, Unit>> successOrfailure,
    required Option<Either<AuthFailure, Unit>>
        newPasswordCreateSuccessOrFailure,
  }) = _OtpVerificationState;

  factory OtpVerificationState.initial() => const OtpVerificationState(
      isSubmitting: false,
      successOrfailure: None(),
      isSubmit: false,
      isResendOtp: false,
      resetPassToken: '',
      newPasswordCreateSuccessOrFailure: None());
}
