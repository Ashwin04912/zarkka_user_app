part of 'my_orders_bloc.dart';

@freezed
class MyOrdersEvent with _$MyOrdersEvent {
   const factory MyOrdersEvent.increment() = _Increment;
  const factory MyOrdersEvent.decrement() = _Decrement;
}