import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/auth/auth_failure.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/orders/upcomming_order_resp_model.dart';
import 'package:tailme/infrastructure/FACADES/i_orders_facade.dart';
import 'package:tailme/infrastructure/string.dart';

@LazySingleton(as: IOrdersFacade)
class OrderApiImpl extends IOrdersFacade {
  @override
  Future<Either<FormFailure, UpcommingOrderRespModel>> upcommingOrderApi(
      {required String token}) async {
    try {
      debugPrint("$baseUrl$upcommingOrders\n$token");
      var dio = Dio();
      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "token":
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6IjY2YTIxYjFhMjNhOWZiZDM4NjlmNmUyNyIsImlhdCI6MTczNTA2NjM4NH0.4J3t_qacIxrv9Z97pNm81NW3FbTwzV5IOUPoag383mk"
      });
      var response = await dio.request(
        'https://tailor-app-backend-2o5l.onrender.com/api/v1/user/orders/get-upcoming-orders',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
        data: data,
      );
      print(response.toString());
      if (response.statusCode == 200) {
        return right(UpcommingOrderRespModel.fromJson(response.data));
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
