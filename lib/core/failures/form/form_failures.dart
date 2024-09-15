import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_failures.freezed.dart';

@freezed
class FormFailure with _$FormFailure {
  const factory FormFailure.networkFailure() = NetworkFailure;
  const factory FormFailure.validationFailure() = ValidationFailure;
  const factory FormFailure.serverFailure() = ServerFailure;
  const factory FormFailure.userNotFound() = UserNotFound;
  const factory FormFailure.cancelledByUser() = CancelledByUser;
ashwin
