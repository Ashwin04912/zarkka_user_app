part of 'change_password_bloc.dart';

@freezed
class ChangePasswordState with _$ChangePasswordState {
  const factory ChangePasswordState({
    required bool isSubmitting,
    required bool showErrorMessages,
    required Option<Either<AuthFailure, Unit>> successOrFailure,
  }) = _ChangePasswordState;


  factory ChangePasswordState.initial() => const ChangePasswordState(
        isSubmitting: false,
        showErrorMessages: false,
        successOrFailure: None()
      );
}
