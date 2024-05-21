// To parse this JSON data, do
//
//     final registerUserResponse = registerUserResponseFromJson(jsonString);

import 'dart:convert';

RegisterUserResponse registerUserResponseFromJson(String str) => RegisterUserResponse.fromJson(json.decode(str));

String registerUserResponseToJson(RegisterUserResponse data) => json.encode(data.toJson());

class RegisterUserResponse {
    String status;
    List<String> message;
    String token;

    RegisterUserResponse({
        required this.status,
        required this.message,
        required this.token,
    });

    factory RegisterUserResponse.fromJson(Map<String, dynamic> json) => RegisterUserResponse(
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
        token: json["token"],
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
        "token": token,
    };
}
