part of 'register_user_bloc.dart';

@freezed
class RegisterUserEvent with _$RegisterUserEvent {
  const factory RegisterUserEvent.signUpButtonPressed({
   required RegisterUserModel user
  }) = _SignUpButtonPressed;
  
}