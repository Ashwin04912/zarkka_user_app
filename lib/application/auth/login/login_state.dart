part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required bool showErrorMessages,
    required bool isSubmitting,
    required bool isEyePressed,
    required Option<Either<AuthFailure, Unit>> successOrfailure,
    required Option<Either<AuthFailure, Unit>> forgetPassEmailRespSuccessOrFailure,
  ashwin) = _LoginState;

  factory LoginState.initial() => const LoginState(
      showErrorMessages: false,
      isSubmitting: false,
      isEyePressed: true,
      forgetPassEmailRespSuccessOrFailure:None(),
      successOrfailure: None());
ashwin
