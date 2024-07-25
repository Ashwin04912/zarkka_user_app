part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.verifyButtonClicked({
    required String otp,
    required String email,
    
  }) = _VerifyButtonClicked;

  const factory OtpVerificationEvent.resendButtonClicked({
    required String email
  }) = _resendButtonClicked;
    
  }
  

 

