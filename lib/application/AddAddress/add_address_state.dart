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
    required bool isLocationLoading,
    required Option<Either<FormFailure, Unit>> successOrfailure,
    required Option<Either<FormFailure, Unit>> addAddressSuccessOrFailureResponse,
    required Option<Either<FormFailure, Unit>> editAddressSuccessOrFailureResponse,
    required String pinCode,
    required String locality,
    required Option<Either<FormFailure,Unit>> isEditDataGot,
    required String landmark,
    required bool isNavigate,
  }) = _AddAddressState;

  factory AddAddressState.initial() => AddAddressState(
        isHome: true,
        isWork: false,
        isOthers: false,
        isLocationLoading: false,
        isSubmiting: false,
        isGettingAddress: false,
        addAddressSuccessOrFailureResponse:none(),
        showErrorMessages: false,
        type: 'home',
        isEditDataGot: none(),
        pinCode: '',
        locality: '',
        landmark: '',
        editAddressSuccessOrFailureResponse:none(),
        isNavigate:false,
        isDataGot: none(),
        successOrfailure: None(),
        addressess: AddressModel(
          status: '', 
          addresses: [], 
        ),
      );
}
////