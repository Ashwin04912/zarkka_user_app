part of 'add_address_bloc.dart';

@freezed
class AddAddressEvent with _$AddAddressEvent {
  const factory AddAddressEvent.homePressed() = _HomePressed;
  const factory AddAddressEvent.workPressed() = _WorkPressed;
  const factory AddAddressEvent.othersPressed() = _OthersPressed;
  const factory AddAddressEvent.submitPressed({
    required String name,
    required String contact,
    required String pinCode,
    required String flat,
    required String area,
    required String landmark,
    required String type,
    
  }) = _SubmitPressed;
  const factory AddAddressEvent.getAllAddress() = _getAllAddress;
  const factory AddAddressEvent.deleteButtonPressed({
    required String addressId,
  }) = _deleteButtonPressed;

  const factory AddAddressEvent.getCurrentLocation() = _getCurrentLocation;
  
  
  
  
}