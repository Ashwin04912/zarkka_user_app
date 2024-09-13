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
  final  addressApi=AddAddressRepo();

  AddAddressBloc() : super(AddAddressState.initial()) {
    on<AddAddressEvent>((event, emit) async {
      final SharedPreferences pref = await SharedPreferences.getInstance();
      final token = pref.getString('token') ?? '';

      await event.map(
        homePressed: (_) async{
          emit(state.copyWith(
            isHome: true,
            type: "home",
            isWork: false,
            isOthers: false,
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            isSubmiting: false,
             isNavigate: false,
            addressess: AddressModel(status: '', addresses: []),
          ));
          
        },
        workPressed: (_) async{
          emit(state.copyWith(
            isHome: false,
            isWork: true,
            type: "work",
            isOthers: false,
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            isSubmiting: false,
            addressess: AddressModel(status: '', addresses: []),
             isNavigate: false,
          ));
          
        },
        othersPressed: (_) async{
          emit(state.copyWith(
            isHome: false,
            isWork: false,
            isOthers: true,
            type: 'other',
            showErrorMessages: false,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            isSubmiting: false,
            addressess: AddressModel(status: '', addresses: []),
             isNavigate: false,
          ));
          
        },
        submitPressed: (value) async {
          emit(state.copyWith(
            isSubmiting: true,
            successOrfailure: none(),
            addAddressSuccessOrFailureResponse: none(),
            isDataGot: none(),
            showErrorMessages: false,
            addressess: AddressModel(status: '', addresses: []),
             isNavigate: false,
          ));

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
                 isNavigate: false,
              ));
            },
            (success) {
              emit(state.copyWith(
                showErrorMessages: false,
                addAddressSuccessOrFailureResponse: some(right(success)),
                isSubmiting: false,
                 isNavigate: false,
              ));
              // After adding address, trigger fetching all addresses
              add(const AddAddressEvent.getAllAddress());
            },
          );
        },
        getAllAddress: (_) async {
          emit(state.copyWith(
            isGettingAddress: true,
            isDataGot: none(),
            successOrfailure: none(),
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
                showErrorMessages: false,
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
          final updatedAddresses = state.addressess.addresses.where(
            (address) => address.addressId != value.addressId,
          ).toList();

          emit(state.copyWith(
            addressess: AddressModel(
              status: state.addressess.status,
              
              addresses: updatedAddresses,
            ),
            isGettingAddress: false,
            successOrfailure: none(),
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
                isGettingAddress: false,
                successOrfailure: some(left(failure)),
                showErrorMessages: true,
                 isNavigate: false,
              ));
            },
            (success) {
              emit(state.copyWith(
                isGettingAddress: false,
                successOrfailure: some(right(unit)),
                showErrorMessages: false,
                 isNavigate: false,
              ));
            },
          );
        }, getCurrentLocation: (_getCurrentLocation value) async{ 
          emit(state.copyWith(
            isLocationLoading: true,
            pinCode: '',
            landmark: '',
            isNavigate: false,
            locality: '',
          ));

        Placemark  placemark = await addressApi.getCurrentLocation();

        emit(state.copyWith(
          isLocationLoading: false,
          pinCode: placemark.postalCode.toString(),
          landmark: placemark.subLocality.toString(),
          locality: placemark.locality.toString(),
          isNavigate:true
        ));
          
         },
      );
    });
  }
}
