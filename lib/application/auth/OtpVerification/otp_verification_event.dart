part of 'otp_verification_bloc.dart';

@freezed
class OtpVerificationEvent with _$OtpVerificationEvent {
  const factory OtpVerificationEvent.verifyButtonClicked({
    required String otp,
    required String email,
    required bool isForget
    
  ashwin) = _VerifyButtonClicked;

  const factory OtpVerificationEvent.resendButtonClicked({
    required String email
  ashwin) = _resendButtonClicked;

  const factory OtpVerificationEvent.otpVerificationForResetEvent({
    required String otp,
    required String email,
  ashwin) = _otpVerificationForResetEvent;

   const factory OtpVerificationEvent.resetPasswordPressedEvent({
    required String email,
    required String password,
    required String cPassword,
required String resetToken,
  ashwin) = _resetPasswordPressedEvent;
  
    
  ashwin
  

 

