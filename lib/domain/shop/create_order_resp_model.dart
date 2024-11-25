// To parse this JSON data, do
//
//     final createOrderRespModel = createOrderRespModelFromJson(jsonString);

import 'dart:convert';

CreateOrderRespModel createOrderRespModelFromJson(String str) => CreateOrderRespModel.fromJson(json.decode(str));

String createOrderRespModelToJson(CreateOrderRespModel data) => json.encode(data.toJson());

class CreateOrderRespModel {
    String status;
    List<String> message;
    List<Datum> data;

    CreateOrderRespModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory CreateOrderRespModel.fromJson(Map<String, dynamic> json) => CreateOrderRespModel(
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}

class Datum {
    String orderItemId;
    double price;
    String itemImageUrl;
    String name;

    Datum({
        required this.orderItemId,
        required this.price,
        required this.itemImageUrl,
        required this.name
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        orderItemId: json["orderItemId"],
        price: json["price"]?.toDouble(),
        itemImageUrl: json["itemImageUrl"],
        name: json["name"]
    );

    Map<String, dynamic> toJson() => {
        "orderItemId": orderItemId,
        "price": price,
        "itemImageUrl": itemImageUrl,
        "name": name
    };
}
