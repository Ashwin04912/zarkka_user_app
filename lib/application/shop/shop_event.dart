part of 'shop_bloc.dart';

@freezed
class ShopEvent with _$ShopEvent {
  const factory ShopEvent.uploadButtonClickedEvent() = _uploadButtonClickedEvent;
  const factory ShopEvent.alterationClickedEvent() = _alterationClickedEvent;
  const factory ShopEvent.stitchingClickedEvent() = _stitchingClickedEvent;
  const factory ShopEvent.embroidaryClickedEvent({
    required bool isChecked
  ashwin) = _embroidaryClickedEvent;
  const factory ShopEvent.handWorkClickedEvent({
    required bool isChecked
  ashwin) = _handWorkClickedEvent;
ashwin
///