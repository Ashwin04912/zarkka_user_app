part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.loginButtonPressedEvent({
    required UserLogin user,
  }) = _LoginButtonPressedEvent;

 const factory LoginEvent.eyeButtonPressed() = _EyeButtonPressed;
  
  const factory LoginEvent.sendCodePressesEvent({
    required String email
  }) = _sendCodePressesEvent;
  
 
  
}
