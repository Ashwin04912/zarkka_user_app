part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  const factory MyOrdersEvent.initialCount(int length) = _InitialCount;

  const factory MyOrdersEvent.increment(int index) = _Increment;

  const factory MyOrdersEvent.decrement(int index) = _Decrement;

  const factory MyOrdersEvent.getProceededOrders({required CreateOrderRespModel model}) = _getProceededOrders;

  const factory MyOrdersEvent.placeOrderButtonClickedEvent({
    required PlaceOrderReqModel orders,
  }) = _placeOrderButtonClickedEvent;
    
  
}
