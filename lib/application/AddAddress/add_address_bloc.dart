import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/infrastructure/AddAddress/add_address_impl.dart';

part 'add_address_event.dart';
part 'add_address_state.dart';
part 'add_address_bloc.freezed.dart';

@injectable
class AddAddressBloc extends Bloc<AddAddressEvent, AddAddressState> {
  final addAddress = AddAddressRepo();
  AddAddressBloc() : super(AddAddressState.initial()) {
    on<AddAddressEvent>((event, emit) async {
      await event.map(
        homePressed: (value) {
          emit(state.copyWith(
            isHome: true,
            isWork: false,
            isOthers: false,
          ));
        },
        workPressed: (value) {
          emit(state.copyWith(isHome: false, isWork: true, isOthers: false));
        },
        othersPressed: (value) {
          emit(state.copyWith(
            isHome: false,
            isWork: false,
            isOthers: true,
          ));
        },
        submitPressed: (_SubmitPressed value) async {
          emit(state.copyWith(
            isSubmiting: true,
            successOrfailure: none(),
            showErrorMessages: false,
          ));
          final resp = await addAddress.saveAddress(
            name: value.name,
            contact: value.contact,
            pincode: value.pinCode,
            flat: value.flat,
            area: value.area,
            landmark: value.landmark,
            token: value.token,
            type: value.type,
          );
          resp.fold((failure) {
            emit(state.copyWith(
              showErrorMessages: true,
              successOrfailure: some(left(failure)),
              isSubmiting: false,
            ));
          }, (success) {
            emit(state.copyWith(
              showErrorMessages: true,
              successOrfailure: some(right(success)),
              isSubmiting: false,
            ));
          });
        },
      );
    });
  }
}
