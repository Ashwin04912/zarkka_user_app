// To parse this JSON data, do
//
//     final userLogin = userLoginFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'user_login_model.freezed.dart';
part 'user_login_model.g.dart';

UserLogin userLoginFromJson(String str) => UserLogin.fromJson(json.decode(str));

String userLoginToJson(UserLogin data) => json.encode(data.toJson());

@freezed
class UserLogin with _$UserLogin {
    const factory UserLogin({
        required String email,
        required String password,
    }) = _UserLogin;

    factory UserLogin.fromJson(Map<String, dynamic> json) => _$UserLoginFromJson(json);
}
