part of 'orders_bloc.dart';

@freezed
class OrdersState with _$OrdersState {
  factory OrdersState({
    required Option<Either<FormFailure, UpcommingOrderRespModel>>
        orderRespModelOrFailure,
    required bool isSubmitting,
  }) = _OrderState;

  factory OrdersState.initial() => OrdersState(
        orderRespModelOrFailure: none(),
        isSubmitting: false,
      );
}
