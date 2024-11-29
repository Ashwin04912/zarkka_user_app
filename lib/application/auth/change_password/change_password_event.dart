part of 'change_password_bloc.dart';

@freezed
class ChangePasswordEvent with _$ChangePasswordEvent {
  const factory ChangePasswordEvent.saveChangesButtomPressed({
    required String oldPassword,
    required String newPassword,
    required String reNewPassword,
    required String email
  }) = _SaveChangesButtomPressed;
  
}