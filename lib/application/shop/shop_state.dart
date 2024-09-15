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
    required bool isHandWork
  }) = _ShopState;

  factory ShopState.initial() => const ShopState(
        fileName: '',
        isLoaded: false,
        alteration: '',
        stitching: '',
        isAlteration: false,
        isStitching: false,
        isEmbroidary: false,
        embroidary: '',
        isHandWork: false,
        handWork: '',
      );
}
