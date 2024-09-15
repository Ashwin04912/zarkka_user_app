import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/AddAddress/model/address_model.dart';
import 'package:tailme/infrastructure/facades/i_address_facade.dart';

import '../string.dart';

@LazySingleton(as: IAddAddressFacade)
class AddAddressRepo implements IAddAddressFacade {
  final Dio _dio = Dio();

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
  }) async {
    try {
      debugPrint(
          "$name $contact $pincode $flat $area, $landmark, $token, $type ${'$baseUrl$addAddressUrl'}");

      final headers = {'Content-Type': 'application/json'};
      final data = json.encode({
        "type": type,
        "name": name,
        "contactNumber": contact,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
        "token": token
      });

      final response = await _dio.post(
        '$baseUrl$addAddressUrl',
        options: Options(
          method: 'POST',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address added successfully.");
        return right(unit);
      } else {
        debugPrint("Failed to add address: ${response.statusMessage}");
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        debugPrint('Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const FormFailure.serverFailure());
      } else {
        debugPrint('Dio error! Message: ${e.message}');
        return left(const FormFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<FormFailure, AddressModel>> getAllAddress({required String token}) async {
    try {
      debugPrint("$token ${'$baseUrl$getAddress'}");

      final headers = {'Content-Type': 'application/json'};
      final data = json.encode({"token": token});

      final response = await _dio.get(
        '$baseUrl$getAddress',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address list retrieved successfully.");
        final addressModel = AddressModel.fromJson(response.data);
        return right(addressModel);
      } else {
        debugPrint("Failed to get addresses: ${response.statusMessage}");
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        debugPrint('Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const FormFailure.serverFailure());
      } else if (e.type == DioExceptionType.connectionTimeout ||
                 e.type == DioExceptionType.receiveTimeout ||
                 e.message?.contains('Failed host lookup') == true) {
        debugPrint('Network error');
        return left(const FormFailure.networkFailure());
      } else {
        debugPrint('Dio error! Message: ${e.message}');
        return left(const FormFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<FormFailure, Unit>> deleteAddress({required String token, required String addressId}) async {
    try {
      debugPrint("$token ${'$baseUrl$delAddress'}");

      final headers = {'Content-Type': 'application/json'};
      final data = json.encode({"token": token, "addressId": addressId});

      final response = await _dio.delete(
        '$baseUrl$delAddress',
        options: Options(
          method: 'DELETE',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address deleted successfully.");
        return right(unit);
      } else {
        debugPrint("Failed to delete address: ${response.statusMessage}");
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        debugPrint('Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const FormFailure.serverFailure());
      } else {
        debugPrint('Dio error! Message: ${e.message}');
        return left(const FormFailure.serverFailure());
      }
    }
  }

  @override
  Future<Either<FormFailure, Unit>> editAddress({
    required String name,
    required String contact,
    required String pincode,
    required String flat,
    required String area,
    required String landmark,
    required String token,
    required String type,
    required String addressId,
  }) async {
    try {
      debugPrint("$token ${'$baseUrl$editAddress'}");

      final headers = {'Content-Type': 'application/json'};
      final data = json.encode({
        "type": type,
        "name": name,
        "contactNumber": contact,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
        "token": token,
        "addressId": addressId,
      });

      final response = await _dio.put(
        '$baseUrl$editAddress',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address edited successfully.");
        return right(unit);
      } else {
        debugPrint("Failed to edit address: ${response.statusMessage}");
        return left(const FormFailure.serverFailure());
      }
    } on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      } else if (e.response != null) {
        debugPrint('Dio error! Status: ${e.response?.statusCode}, Data: ${e.response?.data}');
        return left(const FormFailure.serverFailure());
      } else {
        debugPrint('Dio error! Message: ${e.message}');
        return left(const FormFailure.serverFailure());
      }
    }
  }

  @override
  Future<Placemark> getCurrentLocation() async {
  
      debugPrint("Reached getCurrentLocation function.");

      bool servicePermission = await Geolocator.isLocationServiceEnabled();

      if (!servicePermission) {
        debugPrint("Location service is disabled.");
        // return Future.error(FormFailure.locationServiceDisabled());
      }

      LocationPermission permission = await Geolocator.checkPermission();

      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
        // return Future.error(FormFailure.locationPermissionDenied());
      }

      Position location = await Geolocator.getCurrentPosition();

      List<Placemark> placemarks = await placemarkFromCoordinates(location.latitude, location.longitude);

      debugPrint("Current location: ${placemarks.take(1).toString()}");

      return placemarks[0];
    
      // debugPrint("Error getting current location: $e");
      // return Future.error(FormFailure.locationError());
    
  }
}
