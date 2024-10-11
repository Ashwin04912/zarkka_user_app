import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/AddAddress/model/address_model.dart';
import 'package:tailme/infrastructure/AddAddress/addressApi_impl.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';
part 'add_address_bloc.freezed.dart';

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final addressApi = AddAddressRepo();

  AddAddressBloc() : super(AddAddressState.initial()) {
    on<AddAddressEvent>((event, emit) async {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString('token') ?? '';
      AddressModel recoveryAddress = AddressModel(status: '', addresses: []);

      await event.map(
        homePressed: (_) async {
          emit(state.copyWith(
            isHome: true,
            type: "home",
            isWork: false,
            isOthers: false,
            isEditDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            isSubmiting: false,
            isNavigate: false,
          ));
        },
        workPressed: (_) async {
          emit(state.copyWith(
            isHome: false,
            isWork: true,
            isEditDataGot: none(),
            type: "work",
            isOthers: false,
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            isSubmiting: false,
            isNavigate: false,
          ));
        },
        othersPressed: (_) async {
          emit(state.copyWith(
            isHome: false,
            isWork: false,
            isEditDataGot: none(),
            isOthers: true,
            type: 'other',
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            isSubmiting: false,
            isNavigate: false,
          ));
        },
        submitPressed: (value) async {
          emit(state.copyWith(
            isSubmiting: true,
            // Reset previous results
            addAddressSuccessOrFailureResponse: none(),
            showErrorMessages: false,
          ));

          // Make API call
          final resp = await addressApi.saveAddress(
            name: value.name,
            contact: value.contact,
            pincode: value.pinCode,
            flat: value.flat,
            area: value.area,
            landmark: value.landmark,
            token: token,
            type: value.type,
          );

          resp.fold(
            (failure) {
              emit(state.copyWith(
                showErrorMessages: true,
                addAddressSuccessOrFailureResponse: some(left(failure)),
                isSubmiting: false,
              ));
            },
            (success) {
              emit(state.copyWith(
                addAddressSuccessOrFailureResponse: some(right(unit)),
                isSubmiting: false,
                addressess: success, // Set the new address data here
              ));
            },
          );
        },
        getAllAddress: (_) async {
          emit(state.copyWith(
            isGettingAddress: true,
            isDataGot: none(),
            successOrfailure: none(),
            isEditDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            showErrorMessages: false,
            addressess: AddressModel(status: '', addresses: []),
            isNavigate: false,
          ));

          final address = await addressApi.getAllAddress(token: token);

          address.fold(
            (failure) {
              emit(state.copyWith(
                isGettingAddress: false,
                isDataGot: some(left(failure)),
                isEditDataGot: none(),
                editAddressSuccessOrFailureResponse: none(),
                showErrorMessages: true,
                addressess: AddressModel(status: '', addresses: []),
                isNavigate: false,
              ));
            },
            (success) {
              emit(state.copyWith(
                isGettingAddress: false,
                isNavigate: false,
                isDataGot: some(right(unit)),
                isEditDataGot: none(),
                showErrorMessages: false,
                editAddressSuccessOrFailureResponse: none(),
                addressess: AddressModel(
                  status: success.status,
                  addresses: success.addresses,
                ),
              ));
            },
          );
        },
        deleteButtonPressed: (value) async {
          // Optimistic update: Remove address immediately
          final updatedAddresses = state.addressess.addresses
              .where(
                (address) => address.addressId != value.addressId,
              )
              .toList();

          emit(state.copyWith(
            addressess: AddressModel(
              status: state.addressess.status,
              addresses: updatedAddresses,
            ),
            editAddressSuccessOrFailureResponse: none(),
            isGettingAddress: false,
            successOrfailure: none(),
            isEditDataGot: none(),
            showErrorMessages: false,
            isNavigate: false,
          ));

          final resp = await addressApi.deleteAddress(
            token: token,
            addressId: value.addressId,
          );

          resp.fold(
            (failure) {
              // Restore address if delete fails
              emit(state.copyWith(
                addressess: AddressModel(
                  status: state.addressess.status,
                  addresses: state.addressess.addresses, // Restore addresses
                ),
                editAddressSuccessOrFailureResponse: none(),
                isGettingAddress: false,
                successOrfailure: some(left(failure)),
                showErrorMessages: true,
                isEditDataGot: none(),
                isNavigate: false,
              ));
            },
            (success) {
              emit(state.copyWith(
                  isGettingAddress: false,
                  successOrfailure: some(right(unit)),
                  showErrorMessages: false,
                  editAddressSuccessOrFailureResponse: none(),
                  isNavigate: false,
                  isEditDataGot: none()));
            },
          );
        },
        getCurrentLocation: (_getCurrentLocation value) async {
          emit(state.copyWith(
              isLocationLoading: true,
              pinCode: '',
              landmark: '',
              editAddressSuccessOrFailureResponse: none(),
              isNavigate: false,
              locality: '',
              isEditDataGot: none()));

          Placemark placemark = await addressApi.getCurrentLocation();

          emit(state.copyWith(
              isLocationLoading: false,
              pinCode: placemark.postalCode.toString(),
              landmark: placemark.subLocality.toString(),
              editAddressSuccessOrFailureResponse: none(),
              locality: placemark.locality.toString(),
              isEditDataGot: none(),
              isNavigate: true));
        },
        editButtonPressedEvent: (_editButtonPressedEvent value) async {
          recoveryAddress = value.address;

          emit(state.copyWith(
            isGettingAddress: true,
            isDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            successOrfailure: none(),
            showErrorMessages: false,
            isEditDataGot: none(),
            addressess: AddressModel(status: '', addresses: []),
            isNavigate: false,
          ));

          final address = await addressApi.getAddressById(
              token: token, addressId: value.adddressId);

          address.fold(
            (failure) {
              emit(state.copyWith(
                isGettingAddress: false,
                isDataGot: some(left(failure)),
                showErrorMessages: true,
                editAddressSuccessOrFailureResponse: none(),
                addressess: AddressModel(status: '', addresses: []),
                isNavigate: false,
                isEditDataGot: some(left(failure)),
              ));
              add(const AddAddressEvent.getAllAddress());
            },
            (success) {
              // Check address type and set the appropriate flags
              bool isHome =
                  success.addresses[0].type == Type.HOME ? true : false;
              bool isWork =
                  success.addresses[0].type == Type.WORK ? true : false;
              bool isOthers =
                  success.addresses[0].type == Type.OTHER ? true : false;

              emit(state.copyWith(
                isGettingAddress: false,
                isNavigate: false,
                isDataGot: none(),
                showErrorMessages: false,
                editAddressSuccessOrFailureResponse: none(),
                isEditDataGot: some(right(unit)),
                addressess: AddressModel(
                  status: success.status,
                  addresses: success.addresses,
                ),
                isHome: isHome,
                isWork: isWork,
                isOthers: isOthers,
              ));
              add(const AddAddressEvent.getAllAddress());
            },
          );
        },
        editSubmitButtonPressedEvent:
            (_editSubmitButtonPressedEvent value) async {
          emit(state.copyWith(
            isSubmiting: true,
            successOrfailure: none(),
            isEditDataGot: none(),
            editAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            showErrorMessages: false,
            addressess: AddressModel(status: '', addresses: []),
            isNavigate: false,
          ));

          final resp = await addressApi.updateAddress(
            name: value.name,
            contact: value.contact,
            pincode: value.pinCode,
            flat: value.flat,
            area: value.area,
            landmark: value.landmark,
            token: token,
            type: value.type,
            addressId: value.addressId,
          );

          resp.fold(
            (failure) {
              emit(state.copyWith(
                  showErrorMessages: true,
                  isDataGot: none(),
                  editAddressSuccessOrFailureResponse: some(left(failure)),
                  isSubmiting: false,
                  isNavigate: false,
                  addressess: AddressModel(status: '', addresses: [])));
            },
            (success) {
              emit(state.copyWith(
                  showErrorMessages: false,
                  editAddressSuccessOrFailureResponse: some(right(unit)),
                  isSubmiting: false,
                  isEditDataGot: none(),
                  isNavigate: false,
                  addressess: AddressModel(
                      status: success.status, addresses: success.addresses)));
              // After adding address, trigger fetching all addresses
              add(const AddAddressEvent.getAllAddress());
            },
          );
        },
      );
    });
  }
}
////
