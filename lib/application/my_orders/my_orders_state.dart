part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  factory MyOrdersState({
    required int itemCount,
  }) = _MyOrderState;

  factory MyOrdersState.initial() => MyOrdersState(
        itemCount: 1,
      );
}
