import 'package:dartz/dartz.dart';
import 'package:tailme/core/failures/form/form_failures.dart';
import 'package:tailme/domain/Home/home_page_resp_model.dart';

abstract class IHomePageFacade{
  Future<Either<FormFailure,HomePageRespModel>> getItemsApi({
    required String token,
    required String category
  });
}

//