part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {

  factory MyOrdersState({
    required List<int> itemCount,
    required CreateOrderRespModel model,
  }) = _MyOrdersState;

 
  factory MyOrdersState.initial({required List<int> itemCount}) => MyOrdersState(
        itemCount: itemCount,
        model: CreateOrderRespModel(status: '', message: [], data: [])
      );
}
