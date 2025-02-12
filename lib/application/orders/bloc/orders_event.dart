part of 'orders_bloc.dart';

@freezed
class OrdersEvent with _$OrdersEvent {
  const factory OrdersEvent.getUpcommingOrders() = _getUpcommingOrders;
  
}