import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';

import 'package:tailme/infrastructure/auth/auth_repository.dart';

part 'otp_verification_event.dart';
part 'otp_verification_state.dart';
part 'otp_verification_bloc.freezed.dart';

@injectable
class OtpVerificationBloc
    extends Bloc<OtpVerificationEvent, OtpVerificationState> {
  OtpVerificationBloc() : super(OtpVerificationState.initial()) {
    final authFacde = AuthRepository();
    on<OtpVerificationEvent>((event, emit) async {
      await event.map(verifyButtonClicked: (value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrfailure: none(),
        ));

        final resp = await authFacde.otpVerification(
            otp: value.otp, email: value.email);

        resp.fold((f) {
          emit(state.copyWith(
            isSubmit: true,
            isResendOtp: false,
            successOrfailure: some(left(f)),
            isSubmitting: false,
          ));
        }, (s) {
          emit(state.copyWith(
            successOrfailure: some(right(unit)),
            isResendOtp: false,
            isSubmitting: false,
            isSubmit: true,
          ));
        });
      }, resendButtonClicked: (_resendButtonClicked value) async {
        emit(state.copyWith(
          isSubmitting: true,
          isSubmit: false,
          isResendOtp: true,
          successOrfailure: none(),
        ));
        final resp = await authFacde.resendOtp(email: value.email);

        resp.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            isSubmit: false,
            isResendOtp: true,
            successOrfailure: some(left(f)),
          ));
        }, (s) {
          emit(state.copyWith(
            isSubmitting: false,
            successOrfailure: some(right(unit)),
            isSubmit: false,
            isResendOtp: false,
          ));
        });
      }, otpVerificationForResetEvent:
          (_otpVerificationForResetEvent value) async {
        emit(state.copyWith(
          isSubmitting: true,
          successOrfailure: none(),
        ));

        final resp = await authFacde.otpVerificationForReset(
            otp: value.otp, email: value.email);

        resp.fold((f) {
          emit(state.copyWith(
            resetPassToken: '',
            isSubmit: true,
            isResendOtp: false,
            successOrfailure: some(left(f)),
            isSubmitting: false,
          ));
        }, (resetToken) {
          emit(state.copyWith(
            resetPassToken: resetToken,
            successOrfailure: some(right(unit)),
            isResendOtp: false,
            isSubmitting: false,
            isSubmit: true, // Set this to true, not false
          ));
        });
      }, resetPasswordPressedEvent: (_resetPasswordPressedEvent value) async{ 
         emit(
            state.copyWith(
              isSubmitting: true,
              // showErrorMessages: false,
              successOrfailure:  none(),
              newPasswordCreateSuccessOrFailure: none()
            ),
          );
          final resp = await authFacde.resetPassword(
            email: value.email,
            passwordResetToken: value.resetToken,
            newPassword: value.password,
            confirmPassword: value.cPassword,
          );
          resp.fold(
            (l) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  // showErrorMessages: false,
                  successOrfailure: none(),
                  newPasswordCreateSuccessOrFailure: some(left(l))
                ),
              );
            },
            (r) {
              emit(
                state.copyWith(
                  isSubmitting: false,
                  // showErrorMessages: false,
                  successOrfailure: none(),
                  newPasswordCreateSuccessOrFailure: some(right(r)),
                ),
              );
            },
          );
       });
    });
  }
}
