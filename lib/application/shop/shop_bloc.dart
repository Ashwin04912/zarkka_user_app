import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/infrastructure/shop/shop_api_impl.dart';

import '../../domain/shop/create_order_model.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final repo = CreateOrderRepo();
  final ImagePicker picker = ImagePicker();
  ShopBloc() : super(ShopState.initial()) {
    on<ShopEvent>((event, emit) async {
      await event.map(
        uploadButtonClickedEvent: (value) async {
          emit(state.copyWith(
            fileName: '',
            filePath: File(''),
            isLoaded: false,
          ));

          final XFile? image =
              await picker.pickImage(source: ImageSource.gallery);

          emit(state.copyWith(
              fileName: image!.name,
              isLoaded: true,
              filePath: File(image.path)));
        },
        alterationClickedEvent: (_alterationClickedEvent value) {
          emit(state.copyWith(
            alteration: "Alteration",
            stitching: '',
            isAlteration: true,
            isStitching: false,
          ));
        },
        stitchingClickedEvent: (_stitchingClickedEvent value) {
          emit(state.copyWith(
              stitching: "Stitching",
              alteration: '',
              isStitching: true,
              isAlteration: false));
        },
        embroidaryClickedEvent: (_embroidaryClickedEvent value) {
          final currentAddOns = [...state.addOn];
          if (value.isChecked) {
            if (!currentAddOns.contains("Embroidery")) {
              currentAddOns.add("embroidery");
            }
          } else {
            currentAddOns.remove("embroidery");
          }
          emit(state.copyWith(
            addOn: currentAddOns,
            isEmbroidary: value.isChecked,
            embroidary: value.isChecked ? 'embroidery' : '',
          ));
        },
        handWorkClickedEvent: (_handWorkClickedEvent value) {
          final currentAddOns = [...state.addOn];
          if (value.isChecked) {
            if (!currentAddOns.contains("handwork")) {
              currentAddOns.add("handwork");
            }
          } else {
            currentAddOns.remove("handwork");
          }
          emit(state.copyWith(
            addOn: currentAddOns,
            isHandWork: value.isChecked,
            handWork: value.isChecked ? "handwork" : '',
          ));
        },
        designReference: (_designReference value) {
          emit(state.copyWith(designReference: value.designReference));
        },
        proceedToCheckoutEventPressed:
            (_proceedToCheckoutEventPressed value) async {
          emit(state.copyWith(isLoading: true));
          final result =
              await repo.proceedToCheckout(orderModel: value.orderModel);

          emit(state.copyWith(isLoading: false));
        },
        clearAllEvent: (_clearAllEvent value) {
          emit(state.copyWith(
              fileName: 'Upload image',
              // isLoaded: false,
              alteration: '',
              designReference: '',
              stitching: '',
              isAlteration: false,
              isStitching: false,
              isEmbroidary: false,
              embroidary: '',
              isHandWork: false,
              filePath: File(''),
              handWork: '',
              isLoading: false,
              addOn: const []));
        },
      );
    });
  }
}
