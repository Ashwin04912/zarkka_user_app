import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/orders/upcomming_order_resp_model.dart';
import 'package:tailme/infrastructure/orders/upcomming_order_api_impl.dart';

part 'orders_event.dart';
part 'orders_state.dart';
part 'orders_bloc.freezed.dart';

@injectable
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  final orderApi = OrderApiImpl();
  OrdersBloc() : super(OrdersState.initial()) {
    on<OrdersEvent>((event, emit) async {
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      final String token = prefs.getString('token').toString();
      await event.map(getUpcommingOrders: (value) async {
        emit(
          state.copyWith(
              isSubmitting: true,
              orderRespModelOrFailure: none()),
        );
        final response = await orderApi.upcommingOrderApi(token: token);
        response.fold((f) {
          emit(state.copyWith(
            isSubmitting: false,
            orderRespModelOrFailure: some(left(f))
          ));
        }, (orderModel) {
          emit(state.copyWith(
            orderRespModelOrFailure: some(right(orderModel)),
            isSubmitting: false,
          ));
        });
      });
    });
  }
}
