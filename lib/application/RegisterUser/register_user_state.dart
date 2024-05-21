part of 'register_user_bloc.dart';

@freezed
class RegisterUserState with _$RegisterUserState {
  const factory RegisterUserState({
    required String userName,
    required String email,
    required String password,
    required String cpassword,
    required bool showErrorMessages,
    required bool isSubmitting,
    required Option<Either<AuthFailure, Unit>> successOrfailure,
  }) = _RegisterUserState;

  factory RegisterUserState.intial() => const RegisterUserState(
        userName: '',
        email: '',
        password: '',
        cpassword: '',
        showErrorMessages: false,
        isSubmitting: false,
        successOrfailure: None(),
      );
}
