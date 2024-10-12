import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/my_orders/place_order_req_model.dart';
import 'package:tailme/domain/my_orders/place_order_resp_model.dart';
import 'package:tailme/domain/shop/create_order_resp_model.dart';
import 'package:tailme/infrastructure/my_orders/my_orders_api_impl.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';

@injectable
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  final api = MyOrderRepo();
  MyOrdersBloc() : super(MyOrdersState.initial(itemCount: [])) {
    on<MyOrdersEvent>((event, emit) async {
      await event.map(
        initialCount: (value) {
          // Initialize the itemCount list with the correct length
          emit(state.copyWith(itemCount: List<int>.filled(value.length, 1)));
        },
        increment: (value) {
          // Create a new list from the current state, increment the item at the given index
          final newCount = List<int>.from(state.itemCount);

          newCount[value.index]++;
          emit(state.copyWith(itemCount: newCount));
        },
        decrement: (value) {
          // Decrement the count only if it's greater than 0
          final newCount = List<int>.from(state.itemCount);
          if (newCount[value.index] > 1) {
            newCount[value.index]--;
          }
          emit(state.copyWith(itemCount: newCount));
        },
        getProceededOrders: (_getProceededOrders value) {
          emit(state.copyWith(model: value.model));
        },
        placeOrderButtonClickedEvent:
            (_placeOrderButtonClickedEvent value) async {
          emit(state.copyWith(
            isSubmitting: true,
            successOrFailure: none(),
          ));
          final resp = await api.proceedToCheckout(orderModel: value.orders);

          resp.fold((f) {
            emit(state.copyWith(
              isSubmitting: false,
              successOrFailure: some(left(f)),
            ));
          }, (s) {
            emit(state.copyWith(
                isSubmitting: false, successOrFailure: some(right(s))));
          });
        },
      );
    });
  }
}
