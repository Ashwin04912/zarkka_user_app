import 'dart:convert';

CreateOrderModel createOrderModelFromJson(String str) => CreateOrderModel.fromJson(json.decode(str));

String createOrderModelToJson(CreateOrderModel data) => json.encode(data.toJson());

class CreateOrderModel {
    String token;
    String image;
    String serviceDescription;
    String serviceType;
    String itemId;
    String addons;
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
        addons: json["addons"],
        designReference: json["designReference"],
        measurements: json["measurements"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "image": image,
        "serviceDescription": serviceDescription,
        "serviceType": serviceType,
        "itemId": itemId,
        "addons": addons,
        "designReference": designReference,
        "measurements": measurements,
    };
}
