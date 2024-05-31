import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tailme/domain/Login/auth_failure.dart';
import 'package:tailme/infrastructure/i_auth_facade_impl.dart';
import '../../domain/Login/model/user_login_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _authFacde = AuthFacadeImpl();
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>((event, emit) async {
      await event.map(
        loginButtonPressedEvent: (valueEP) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              showErrorMessages: false,
              successOrfailure: const None(),
            ),
          );
          final resp = await _authFacde.signInWithEmailAndPassword(
            emailAddress: valueEP.user.email,
            password: valueEP.user.password,
          );
          resp.fold(
            (l) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: true,
                  successOrfailure: some(left(l)),
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  showErrorMessages: false,
                  successOrfailure: some(right(r)),
                ),
              );
            },
          );
        },
        eyeButtonPressed: (_EyeButtonPressed value) {
         emit( state.copyWith(
            isEyePressed: !state.isEyePressed,
            isSubmitting: false,
            showErrorMessages: false,
            successOrfailure: const None()
          ));
        },
      );
    });
  }
}
