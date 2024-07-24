import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/domain/auth/RegisterUser/model/user_register_model.dart';
import 'package:tailme/infrastructure/auth/repository/auth_repository.dart';

import '../../../domain/auth/Login/auth_failure.dart';

part 'register_user_event.dart';
part 'register_user_state.dart';
part 'register_user_bloc.freezed.dart';

@injectable
class RegisterUserBloc extends Bloc<RegisterUserEvent, RegisterUserState> {
  final _authFacde = AuthRepository();
  RegisterUserBloc() : super(RegisterUserState.intial()) {
    on<RegisterUserEvent>((event, emit) async {
      await event.map(signUpButtonPressed: (_SignUpButtonPressed value) async {
        emit(state.copyWith(
            isSubmitting: true,
            showErrorMessages: false,
            successOrfailure: const None()));
        final resp = await _authFacde.registerWithEmailAndPassword(
          email: value.user.email,
          pass: value.user.password,
          cpass: value.user.confirmPassword,
          userName: value.user.userName,
        );

        resp.fold(
          (f) {
            emit(
              state.copyWith(
                isSubmitting: false,
                showErrorMessages: false,
                successOrfailure: some(
                  left(f),
                ),
              ),
            );
          },
          (s) {
            emit(
              state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  successOrfailure: some(right(unit))
                  ),
            );
          },
        );
      }, eyePassButtonPressed: (_eyeButtonPressed value) {
        emit(state.copyWith(
            isPassEyePressed: !state.isPassEyePressed,
            isSubmitting: false,
            showErrorMessages: false,
            successOrfailure: const None()));
      }, eyeCPassButtonPressed: (_eyeCPassButtonPressed value) { 
        emit(state.copyWith(
            isCpassEyePressed: !state.isCpassEyePressed,
            isSubmitting: false,
            showErrorMessages: false,
            successOrfailure: const None()));
       });
    });
  }
}
