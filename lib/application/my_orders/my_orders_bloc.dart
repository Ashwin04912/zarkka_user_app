import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_orders_event.dart';
part 'my_orders_state.dart';
part 'my_orders_bloc.freezed.dart';


@injectable
class MyOrdersBloc extends Bloc<MyOrdersEvent, MyOrdersState> {
  MyOrdersBloc() : super(MyOrdersState.initial()) {
    on<MyOrdersEvent>((event, emit) {
      event.map(
        increment: (value) {
          int newCount = state.itemCount+1;
          emit(state.copyWith(itemCount: newCount));
        },
        decrement: (value) {
           int newCount = state.itemCount-1;
          emit(state.copyWith(itemCount: newCount));
        },
      );
    });
  }
}
