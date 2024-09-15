import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    String status;
    List<String> message;
    String token;

    LoginResponse({
        required this.status,
        required this.message,
        required this.token,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
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
