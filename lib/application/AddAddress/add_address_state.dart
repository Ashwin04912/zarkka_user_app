part of 'add_address_bloc.dart';

@freezed
class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    required bool isHome,
    required bool isWork,
    required bool isOthers,
    required bool isSubmiting,
    required bool showErrorMessages,
    required Option<Either<FormFailure, Unit>> successOrfailure
  }) = _AddAddressState;

  factory AddAddressState.initial() => const AddAddressState(
        isHome: true,
        isWork: false,
        isOthers: false,
        isSubmiting: true,
        successOrfailure: None(),
        showErrorMessages: false,
      );

}
