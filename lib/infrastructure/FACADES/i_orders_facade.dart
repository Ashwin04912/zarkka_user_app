import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/orders/upcomming_order_resp_model.dart';

abstract class IOrdersFacade {
  Future<Either<FormFailure,UpcommingOrderRespModel>> upcommingOrderApi({
    required String token
  });
}