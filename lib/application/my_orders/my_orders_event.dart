part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
  // Event to initialize the item count list with the given length
  const factory MyOrdersEvent.initialCount(int length) = _InitialCount;

  // Event to increment the item count at a specific index
  const factory MyOrdersEvent.increment(int index) = _Increment;

  // Event to decrement the item count at a specific index
  const factory MyOrdersEvent.decrement(int index) = _Decrement;
}
