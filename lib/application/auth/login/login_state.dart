part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState(
          {required String email,
          required String password,
          required bool showErrorMessages,
          required bool isSubmitting,
          required bool isEyePressed,
          required Option<Either<AuthFailure, Unit>> successOrfailure}) =
      _LoginState;

  factory LoginState.initial() => const LoginState(
      email: '',
      password: '',
      showErrorMessages: false,
      isSubmitting: false,
      isEyePressed: true,
      successOrfailure: None());
}
