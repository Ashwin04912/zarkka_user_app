// To parse this JSON data, do
//
//     final registerUserModel = registerUserModelFromJson(jsonString);

import 'dart:convert';

RegisterUserModel registerUserModelFromJson(String str) =>
    RegisterUserModel.fromJson(json.decode(str));

String registerUserModelToJson(RegisterUserModel data) =>
    json.encode(data.toJson());

class RegisterUserModel {
  String email;
  String password;
  String confirmPassword;
  String userName;

  RegisterUserModel(
      {required this.email,
      required this.password,
      required this.confirmPassword,
      required this.userName});

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      RegisterUserModel(
        email: json["email"],
        password: json["password"],
        confirmPassword: json["confirmPassword"],
        userName: json["userName"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
      };
}
