import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/infrastructure/facades/i_address_facade.dart';

import '../string.dart';

@LazySingleton(as: IAddAddressFacade)
class AddAddressRepo implements IAddAddressFacade {
  @override
  Future<Either<FormFailure, Unit>> saveAddress({
    required String name,
    required String contact,
    required String pincode,
    required String flat,
    required String area,
    required String landmark,
    required String token,
    required String type,
  }) async{
   //Api integration


    try {
      debugPrint(
          "$name $contact $pincode  $flat $area , $landmark ,$token ,$type ${'$baseUrl$addAddressUrl'}");

      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "type": type,
        "name": name,
        "contactNumber": contact,
        "pincode": pincode,
        "flat":flat,
        "area":area,
        "landmark":landmark,
        "token":token
      });

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$addAddressUrl',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        print("i got response");
        return right(unit);
      } else {
        print(response.data);
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
  
  @override
  Future<Either<FormFailure, Unit>> getAllAddress({required String token}) async{
    

    try {
      debugPrint(
          "$token ${'$baseUrl$getAddress'}");

      var headers = {'Content-Type': 'application/json'};
      var data = json.encode({
        "token":token
      });

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$getAddress',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        print("i got response");
        return right(unit);
      } else {
        print(response.data);
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
