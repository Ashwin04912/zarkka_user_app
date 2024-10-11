// To parse this JSON data, do
//
//     final createOrderRespModel = createOrderRespModelFromJson(jsonString);

import 'dart:convert';

CreateOrderRespModel createOrderRespModelFromJson(String str) => CreateOrderRespModel.fromJson(json.decode(str));

String createOrderRespModelToJson(CreateOrderRespModel data) => json.encode(data.toJson());

class CreateOrderRespModel {
    String status;
    List<String> message;
    Data data;

    CreateOrderRespModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory CreateOrderRespModel.fromJson(Map<String, dynamic> json) => CreateOrderRespModel(
        status: json["status"],
        message: List<String>.from(json["message"].map((x) => x)),
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "message": List<dynamic>.from(message.map((x) => x)),
        "data": data.toJson(),
    };
}

class Data {
    String serviceDescription;
    String orderItemId;
    String itemId;
    String serviceType;
    String designReference;
    List<String> addons;
    String imageId;
    double price;

    Data({
        required this.serviceDescription,
        required this.orderItemId,
        required this.itemId,
        required this.serviceType,
        required this.designReference,
        required this.addons,
        required this.imageId,
        required this.price,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        serviceDescription: json["serviceDescription"],
        orderItemId: json["orderItemId"],
        itemId: json["itemId"],
        serviceType: json["serviceType"],
        designReference: json["designReference"],
        addons: List<String>.from(json["addons"].map((x) => x)),
        imageId: json["imageId"],
        price: json["price"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "serviceDescription": serviceDescription,
        "orderItemId": orderItemId,
        "itemId": itemId,
        "serviceType": serviceType,
        "designReference": designReference,
        "addons": List<dynamic>.from(addons.map((x) => x)),
        "imageId": imageId,
        "price": price,
    };
}
