import 'dart:convert';

RegisterUserFailedResp registerUserFailedRespFromJson(String str) =>
    RegisterUserFailedResp.fromJson(json.decode(str));

String registerUserFailedRespToJson(RegisterUserFailedResp data) =>
    json.encode(data.toJson());

class RegisterUserFailedResp {
  String status;
  List<String> message;

  RegisterUserFailedResp({
    required this.status,
    required this.message,
  });

  factory RegisterUserFailedResp.fromJson(Map<String, dynamic> json) =>
      RegisterUserFailedResp(
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
      };
}
