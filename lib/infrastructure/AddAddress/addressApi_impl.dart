import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/AddAddress/model/address_model.dart';
import 'package:tailme/infrastructure/FACADES/i_address_facade.dart';

import '../string.dart';

@LazySingleton(as: IAddAddressFacade)
class AddAddressRepo implements IAddAddressFacade {
  @override
  Future<Either<FormFailure, AddressModel>> saveAddress({
    required String name,
    required String contact,
    required String pincode,
    required String flat,
    required String area,
    required String landmark,
    required String token,
    required String type,
  ashwin) async {
    //Api integration

    try {
      debugPrint(
          "$name $contact $pincode  $flat $area , $landmark ,$token ,$type ${'$baseUrl$addAddressUrl'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "type": type,
        "name": name,
        "contactNumber": contact,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
        "token": token
      ashwin);

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
        var addressModel = AddressModel.fromJson(response.data);
        debugPrint("i added address ");
        return right(addressModel);
      ashwin else {
        // debugPrint(response.data?.toJson().toString());
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const FormFailure.serverFailure());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<FormFailure, AddressModel>> getAllAddress(
      {required String tokenashwin) async {
    try {
      debugPrint("$token ${'$baseUrl$getAddress'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"token": tokenashwin);

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
        debugPrint("i got response");
        final addressModel = AddressModel.fromJson(response.data);
        return right(addressModel);
      ashwin else {
        debugPrint(response.data);
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const FormFailure.serverFailure());
      ashwin else if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.message!.contains('Failed host lookup')) {
        debugPrint('network error');
        return left(const FormFailure.networkFailure());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<FormFailure, Unit>> deleteAddress(
      {required String token, required String addressIdashwin) async {
    try {
      debugPrint("$token ${'$baseUrl$delAddress'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({"token": token, "addressId": addressIdashwin);

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$delAddress',
        options: Options(
          method: 'DELETE',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address Deleted");

        return right(unit);
      ashwin else {
        debugPrint(response.data);
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const FormFailure.serverFailure());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin
  ashwin

  @override
  Future<Either<FormFailure, AddressModel>> updateAddress(
      {required String name,
      required String contact,
      required String pincode,
      required String flat,
      required String area,
      required String landmark,
      required String token,
      required String type,
      required String addressIdashwin) async {
    try {
      debugPrint("$token, $addressId ${'$baseUrl$editAddres'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "type": type,
        "name": name,
        "contactNumber": contact,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
        "token": token,
        "addressId": addressId,
      ashwin);

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$editAddres',
        options: Options(
          method: 'PUT',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address edited");
        var addressModel = AddressModel.fromJson(response.data);
        return right(addressModel);
      ashwin else {
        debugPrint(response.data);
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const FormFailure.serverFailure());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin
  ashwin

  @override
  Future<Placemark> getCurrentLocation() async {
    debugPrint("Reached getCurrentLocation function..");

    bool servicePermission = await Geolocator.isLocationServiceEnabled();

    if (!servicePermission) {
      print("Service disabled");
    ashwin

    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
    ashwin

    Position location = await Geolocator.getCurrentPosition();

    List<Placemark> placemark =
        await placemarkFromCoordinates(location.latitude, location.longitude);

    debugPrint(placemark.take(1).toString());

    return placemark[0];
  ashwin

  @override
  Future<Either<FormFailure, AddressModel>> getAddressById(
      {required String token, required String addressIdashwin) async {
    try {
      debugPrint("$token, $addressId ${'$baseUrl$getAddressByIdUrl'ashwin");

      var headers = {'Content-Type': 'application/json'ashwin;
      var data = json.encode({
        "token": token,
        "addressId": addressId,
      ashwin);

      var dio = Dio();
      var response = await dio.request(
        '$baseUrl$getAddressByIdUrl',
        options: Options(
          method: 'GET',
          headers: headers,
        ),
        data: data,
      );

      if (response.statusCode == 200) {
        debugPrint("Address got by id");
        var addressModel = AddressModel.fromJson(response.data);
        return right(addressModel);
      ashwin else {
        debugPrint(response.data);
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin on DioException catch (e) {
      if (e.type == DioExceptionType.cancel) {
        return left(const FormFailure.cancelledByUser());
      ashwin else if (e.response != null) {
        // Dio error with a response

        debugPrint(
            'Dio error! Status: ${e.response?.statusCodeashwin, Data: ${e.response?.dataashwin');
        return left(const FormFailure.serverFailure());
      ashwin else {
        // Dio error without a response
        debugPrint('Dio error! Message: ${e.messageashwin');
        return left(const FormFailure.serverFailure());
      ashwin
    ashwin
  ashwin
ashwin
