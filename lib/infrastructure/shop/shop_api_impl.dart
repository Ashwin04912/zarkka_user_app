import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/shop/create_order_model.dart';
import 'package:tailme/infrastructure/FACADES/i_shop_facade.dart';
import 'package:tailme/infrastructure/string.dart';

class CreateOrderRepo implements IShopFacade {
  @override
  Future<Either<FormFailure, Unit>> proceedToCheckout(
      {required CreateOrderModel orderModel}) async {
    try {
      var data = FormData.fromMap({
        'files': [
          await MultipartFile.fromFile(orderModel.image, filename: 'Mydesign')
        ],
        'token': orderModel.token,
        'serviceDescription': orderModel.serviceDescription,
        'serviceType': orderModel.serviceType,
        'itemId': orderModel.itemId,
        'addons': orderModel.addons,
        'designReference': orderModel.designReference,
        'measurements': orderModel.measurements
      });

      var dio = Dio();

      var response = await dio.request(
        '$baseUrl$createOrderItem',
        options: Options(
          method: 'POST',
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        return right(unit);
      } else {
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        // Dio error with a response

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
