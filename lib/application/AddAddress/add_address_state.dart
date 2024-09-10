part of 'add_address_bloc.dart';


@freezed
class AddAddressState with _$AddAddressState {
  const factory AddAddressState({
    required bool isHome,
    required bool isWork,
    required bool isOthers,
    required bool isSubmiting,
    required bool isGettingAddress,
    required bool showErrorMessages,
    required AddressModel addressess,
    required Option<Either<FormFailure, Unit>> isDataGot,
    required String type,
    required Option<Either<FormFailure, Unit>> successOrfailure,
    required Option<Either<FormFailure, Unit>> addAddressSuccessOrFailureResponse,
  }) = _AddAddressState;

  factory AddAddressState.initial() => AddAddressState(
        isHome: true,
        isWork: false,
        isOthers: false,
        isSubmiting: false,
        isGettingAddress: false,
        addAddressSuccessOrFailureResponse:none(),
        showErrorMessages: false,
        type: 'home',
        isDataGot: none(),
        successOrfailure: None(),
        addressess: AddressModel(
          status: '', 
          addresses: [], 
        ),
      );
}
