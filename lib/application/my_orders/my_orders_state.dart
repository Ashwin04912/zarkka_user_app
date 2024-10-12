part of 'my_orders_bloc.dart';

@freezed
class MyOrdersState with _$MyOrdersState {

  factory MyOrdersState({
    required List<int> itemCount,
    required CreateOrderRespModel model,
    required bool isSubmitting,
    required Option<Either<FormFailure,PlaceOrderRespModel>> successOrFailure,
  }) = _MyOrdersState;

 
  factory MyOrdersState.initial({required List<int> itemCount}) => MyOrdersState(
        itemCount: itemCount,
        model: CreateOrderRespModel(status: '', message: [], data: []),
        isSubmitting: false,
        successOrFailure: none()
      );
}
