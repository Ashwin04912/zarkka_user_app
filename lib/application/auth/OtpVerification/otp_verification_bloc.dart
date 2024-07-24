import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/domain/auth/Login/auth_failure.dart';

import 'package:tailme/infrastructure/auth/repository/auth_repository.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';
part 'otp_verification_bloc.freezed.dart';

@injectable
class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  OtpVerificationBloc() : super(OtpVerificationState.initial()) {
    final _authFacde = AuthRepository();
    on<OtpVerificationEvent>((event, emit) async {
      await event.map(verifyButtonClicked: (value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrfailure: none(),
        ));
        final resp = await _authFacde.otpVerification(
            otp: value.otp, email: value.email);

        resp.fold((f) {
          emit(state.copyWith(
            successOrfailure: some(left(f)),
            isSubmitting: false,

          ));
        }, (s) {
          emit(state.copyWith(
            successOrfailure: some(right(unit)),
            isSubmitting: false
          ));
        });
      });
    });
  }
}
