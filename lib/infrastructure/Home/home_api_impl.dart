import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/Home/home_page_resp_model.dart';
import 'package:tailme/infrastructure/FACADES/i_home_facade.dart';
import 'package:tailme/infrastructure/string.dart';

@LazySingleton(as: IHomePageFacade)
class HomeApiImpl extends IHomePageFacade {
  @override
  Future<Either<FormFailure, HomePageRespModel>> getItemsApi(
      {required String token, required String category}) async {
    debugPrint("reached api $token , $category , $baseUrl$getitems");
    try {
      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({"category": category, "token": token});
      var dio = Dio();
      var response = await dio.request(
        "$baseUrl$getitems",
        options: Options(
          method: 'GET',
          headers: headers,
        ),
        data: data,
      );
      if (response.statusCode == 200) {
        debugPrint("successfully got list");
        return right(HomePageRespModel.fromJson(response.data));
      } else {
        print("server error");
        // debugPrint(response.data?.toJson().toString());
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      print(e);
      if (e.type == DioExceptionType.cancel) {
        return left(FormFailure.cancelledByUser());
      } else if (e.response != null) {
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
