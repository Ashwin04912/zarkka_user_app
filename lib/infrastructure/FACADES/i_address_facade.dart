import 'package:dartz/dartz.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/AddAddress/model/address_model.dart';

abstract class IAddAddressFacade {
  Future<Either<FormFailure, Unit>> saveAddress(
      {required String name,
      required String contact,
      required String pincode,
      required String flat,
      required String area,
      required String landmark,
      required String token,
      required String type});

  Future<Either<FormFailure, AddressModel>> getAllAddress({
    required String token,
  });

  Future<Either<FormFailure, Unit>> deleteAddress(
      {required String token, required String addressId});

  Future<Either<FormFailure, Unit>> editAddress(
      {required String name,
      required String contact,
      required String pincode,
      required String flat,
      required String area,
      required String landmark,
      required String token,
      required String type,
      required String addressId});



 Future<Placemark> getCurrentLocation();
}

