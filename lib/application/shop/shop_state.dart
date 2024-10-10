part of 'shop_bloc.dart';

@freezed
class ShopState with _$ShopState {
  const factory ShopState({
    required String fileName,
    required bool isLoaded,
    required String alteration,
    required bool isAlteration,
    required String stitching,
    required bool isStitching,
    required String embroidary,
    required bool isEmbroidary,
    required String handWork,
    required bool isHandWork,
    required File filePath,
    required String designReference,
   required bool isLoading,
   required List<String> addOn,
  }) = _ShopState;

  factory ShopState.initial() => ShopState(
        fileName: '',
        isLoaded: false,
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
        addOn: const []
      );
}
