import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/form/form_failures.dart';

import '../../domain/shop/create_order_model.dart';

abstract class IShopFacade{
Future <Either<FormFailure,Unit>> proceedToCheckout({
  required CreateOrderModel orderModel
});

}