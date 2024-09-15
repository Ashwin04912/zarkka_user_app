part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.verifyButtonClicked({
    required String otp,
    required String email,
    required bool isForget
    
  }) = _VerifyButtonClicked;

  const factory OtpVerificationEvent.resendButtonClicked({
    required String email
  }) = _resendButtonClicked;

  const factory OtpVerificationEvent.otpVerificationForResetEvent({
    required String otp,
    required String email,
  }) = _otpVerificationForResetEvent;

   const factory OtpVerificationEvent.resetPasswordPressedEvent({
    required String email,
    required String password,
    required String cPassword,
required String resetToken,
  }) = _resetPasswordPressedEvent;
  
    
  }
  

 

