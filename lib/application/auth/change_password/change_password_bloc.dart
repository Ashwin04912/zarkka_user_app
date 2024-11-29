import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';
import 'package:tailme/infrastructure/auth/auth_repository.dart';

part 'change_password_event.dart';
part 'change_password_state.dart';
part 'change_password_bloc.freezed.dart';

@injectable
class ChangePasswordBloc
    extends Bloc<ChangePasswordEvent, ChangePasswordState> {
  ChangePasswordBloc() : super(ChangePasswordState.initial()) {
    final _authRepo = AuthRepository();
    on<ChangePasswordEvent>((event, emit) async {
      event.map(saveChangesButtomPressed: (value) async {
        emit(state.copyWith(
            isSubmitting: true,
            showErrorMessages: false,
            successOrFailure: none()));

        final resp = await _authRepo.changePassowordWithOldPassword(
          oldPassword: value.oldPassword,
          newPassword: value.newPassword,
          reNewPassword: value.reNewPassword,
          email: value.email,
        );

        resp.fold((f) {
          emit(state.copyWith(
              isSubmitting: false,
              showErrorMessages: true,
              successOrFailure: some(left(f))));
        }, (s) {
          emit(state.copyWith(
              isSubmitting: false,
              showErrorMessages: false,
              successOrFailure: some(right(s))));
        });
      });
    });
  }
}
