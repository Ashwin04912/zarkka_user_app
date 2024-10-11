// To parse this JSON data, do
//
//     final createOrderModel = createOrderModelFromJson(jsonString);

import 'dart:convert';
import 'dart:io';

CreateOrderModel createOrderModelFromJson(String str) => CreateOrderModel.fromJson(json.decode(str));

String createOrderModelToJson(CreateOrderModel data) => json.encode(data.toJson());

class CreateOrderModel {
    String token;
    File image;
    String serviceDescription;
    String serviceType;
    String itemId;
    List<String> addons;
    String designReference;
    String measurements;

    CreateOrderModel({
        required this.token,
        required this.image,
        required this.serviceDescription,
        required this.serviceType,
        required this.itemId,
        required this.addons,
        required this.designReference,
        required this.measurements,
    });

    factory CreateOrderModel.fromJson(Map<String, dynamic> json) => CreateOrderModel(
        token: json["token"],
        image: json["image"],
        serviceDescription: json["serviceDescription"],
        serviceType: json["serviceType"],
        itemId: json["itemId"],
        addons: List<String>.from(json["addons"].map((x) => x)),
        designReference: json["designReference"],
        measurements: json["measurements"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "image": image,
        "serviceDescription": serviceDescription,
        "serviceType": serviceType,
        "itemId": itemId,
        "addons": List<dynamic>.from(addons.map((x) => x)),
        "designReference": designReference,
        "measurements": measurements,
    };
}
