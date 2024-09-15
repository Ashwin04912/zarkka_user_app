part of 'register_user_bloc.dart';

@freezed
class RegisterUserEvent with _$RegisterUserEvent {
  const factory RegisterUserEvent.signUpButtonPressed(
      {required RegisterUserModel userashwin) = _SignUpButtonPressed;

  const factory RegisterUserEvent.eyePassButtonPressed() = _eyeButtonPressed;

  const factory RegisterUserEvent.eyeCPassButtonPressed() =
      _eyeCPassButtonPressed;
ashwin
