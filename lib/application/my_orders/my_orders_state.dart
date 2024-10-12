part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {
  // Define the state with a list of integers representing item counts
  factory MyOrdersState({
    required List<int> itemCount,
  }) = _MyOrdersState;

  // Factory constructor for initializing the state with a given item count list
  factory MyOrdersState.initial({required List<int> itemCount}) => MyOrdersState(
        itemCount: itemCount, // Initialize with the provided itemCount
      );
}
