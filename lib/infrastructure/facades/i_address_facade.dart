import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/form/form_failures.dart';

abstract class IAddAddressFacade{
  
  Future<Either<FormFailure, Unit>> saveAddress({
    required String name,
    required String contact,
    required String pincode,
    required String flat,
    required String area,
    required String landmark,
    required String token,
    required String type
  });

   Future<Either<FormFailure, Unit>> getAllAddress({
    required String token,
  });

}