import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/my_orders/place_order_req_model.dart';
import 'package:tailme/domain/my_orders/place_order_resp_model.dart';
import 'package:tailme/infrastructure/FACADES/i_place_order_facades.dart';
import 'package:tailme/infrastructure/string.dart';

@LazySingleton(as: IMyOrdersFacade)
class MyOrderRepo extends IMyOrdersFacade {
  @override
  Future<Either<FormFailure, PlaceOrderRespModel>> proceedToCheckout(
      {required PlaceOrderReqModel orderModel}) async {
    try {
      print("hello ${orderModel.orderItems[1].orderItemId} ");
      
      
    
      // print(orderModel.toJson());
      var data = json.encode({
        "token": orderModel.token,
        "orderItems": orderModel.orderItems,
        "addressId": orderModel.addressId,
      });
      var dio = Dio();
      var response = await dio.request(
        '4https://tailor-app-backend-2o5l.onrender.com/api/v1/user/orders/place-order',
        options: Options(
          method: 'POST',
        ),
        data: data,
      );
      if (response.statusCode == 200) {
        print(response.data);
        return right(PlaceOrderRespModel.fromJson(response.data));
      } else {
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        if (e.response!.statusCode == 400) {
          return left(const FormFailure.validationFailure());
        } else if (e.response!.statusCode == 401) {
          return left(const FormFailure.userNotFound());
        }

        debugPrint(
            'Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const FormFailure.serverFailure());
      } else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.message}');
        return left(const FormFailure.serverFailure());
      }
    }
  }
}
