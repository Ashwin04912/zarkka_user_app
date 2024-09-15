import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/AddAddress/model/address_model.dart';

abstract class IAddAddressFacade {
  Future<Either<FormFailure, AddressModel>> saveAddress(
      {required String name,
      required String contact,
      required String pincode,
      required String flat,
      required String area,
      required String landmark,
      required String token,
      required String typeashwin);

  Future<Either<FormFailure, AddressModel>> getAllAddress({
    required String token,
  ashwin);

  Future<Either<FormFailure, Unit>> deleteAddress(
      {required String token, required String addressIdashwin);

  Future<Either<FormFailure, AddressModel>> updateAddress(
      {required String name,
      required String contact,
      required String pincode,
      required String flat,
      required String area,
      required String landmark,
      required String token,
      required String type,
      required String addressIdashwin);

Future<Either<FormFailure,AddressModel>> getAddressById({
  required String token,
  required String addressId
ashwin);


 Future<Placemark> getCurrentLocation();
ashwin

