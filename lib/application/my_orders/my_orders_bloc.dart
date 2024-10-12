import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';

@injectable
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(MyOrdersState.initial(itemCount: [])) {
    on<MyOrdersEvent>((event, emit) {
      event.map(
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
          if (newCount[value.index] > 0) {
            newCount[value.index]--;
          }
          emit(state.copyWith(itemCount: newCount));
        },
      );
    });
  }
}
