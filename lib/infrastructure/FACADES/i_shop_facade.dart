import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/shop/create_order_resp_model.dart';

import '../../domain/shop/create_order_req_model.dart';

abstract class IShopFacade{
Future <Either<FormFailure,CreateOrderRespModel>> proceedToCheckout({
  required CreateOrderReqModel orderModel
});
}