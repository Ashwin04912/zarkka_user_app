import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

part 'shop_event.dart';
part 'shop_state.dart';
part 'shop_bloc.freezed.dart';

@injectable
class ShopBloc extends Bloc<ShopEvent, ShopState> {
  final ImagePicker picker = ImagePicker();
  ShopBloc() : super(ShopState.initial()) {
    on<ShopEvent>((event, emit) async {
      await event.map(uploadButtonClickedEvent: (value) async {
        emit(state.copyWith(
          fileName: '',
          isLoaded: false,
        ));

        final XFile? image =
            await picker.pickImage(source: ImageSource.gallery);

        emit(state.copyWith(fileName: image!.name, isLoaded: true));
      }, alterationClickedEvent: (_alterationClickedEvent value) {
        emit(state.copyWith(
          alteration: "Alteration",
          stitching: '',
          isAlteration: true,
          isStitching: false,
        ));
      }, stitchingClickedEvent: (_stitchingClickedEvent value) {
        emit(state.copyWith(
            stitching: "Stitching",
            alteration: '',
            isStitching: true,
            isAlteration: false));
      }, embroidaryClickedEvent: (_embroidaryClickedEvent value) {
        emit(state.copyWith(
          stitching: '',
          alteration: '',
          isAlteration: false,
          isStitching: false,
          isEmbroidary: value.isChecked,
          embroidary: value.isChecked ? 'Embroidery' : ''
        ));
      }, handWorkClickedEvent: (_handWorkClickedEvent value) {
        emit(state.copyWith(
          stitching: '',
          alteration: '',
          isAlteration: false,
          isStitching: false,
          isHandWork: value.isChecked,
          handWork:value.isChecked? "Handwork": '',
        ));
      });
    });
  }
}
