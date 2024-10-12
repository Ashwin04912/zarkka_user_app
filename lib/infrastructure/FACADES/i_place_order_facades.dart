import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/my_orders/place_order_req_model.dart';
import 'package:tailme/domain/my_orders/place_order_resp_model.dart';
import 'package:tailme/domain/shop/create_order_resp_model.dart';

abstract class IMyOrdersFacade{
Future <Either<FormFailure,PlaceOrderRespModel>> proceedToCheckout({
  required PlaceOrderReqModel orderModel
});
}