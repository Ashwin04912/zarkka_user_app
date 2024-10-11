// To parse this JSON data, do
//
//     final CreateOrderReqModel = CreateOrderReqModelFromJson(jsonString);

import 'dart:convert';
import 'dart:io';

CreateOrderReqModel createOrderReqModelFromJson(String str) => CreateOrderReqModel.fromJson(json.decode(str));

String createOrderReqModelToJson(CreateOrderReqModel data) => json.encode(data.toJson());

class CreateOrderReqModel {
    String token;
    File image;
    String serviceDescription;
    String serviceType;
    String itemId;
    List<String> addons;
    String designReference;
    String measurements;

    CreateOrderReqModel({
        required this.token,
        required this.image,
        required this.serviceDescription,
        required this.serviceType,
        required this.itemId,
        required this.addons,
        required this.designReference,
        required this.measurements,
    });

    factory CreateOrderReqModel.fromJson(Map<String, dynamic> json) => CreateOrderReqModel(
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
