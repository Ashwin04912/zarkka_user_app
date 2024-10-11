// To parse this JSON data, do
//
//     final placeOrderReqModel = placeOrderReqModelFromJson(jsonString);

import 'dart:convert';

PlaceOrderReqModel placeOrderReqModelFromJson(String str) => PlaceOrderReqModel.fromJson(json.decode(str));

String placeOrderReqModelToJson(PlaceOrderReqModel data) => json.encode(data.toJson());

class PlaceOrderReqModel {
    String token;
    List<OrderItem> orderItems;
    String addressId;

    PlaceOrderReqModel({
        required this.token,
        required this.orderItems,
        required this.addressId,
    });

    factory PlaceOrderReqModel.fromJson(Map<String, dynamic> json) => PlaceOrderReqModel(
        token: json["token"],
        orderItems: List<OrderItem>.from(json["orderItems"].map((x) => OrderItem.fromJson(x))),
        addressId: json["addressId"],
    );

    Map<String, dynamic> toJson() => {
        "token": token,
        "orderItems": List<dynamic>.from(orderItems.map((x) => x.toJson())),
        "addressId": addressId,
    };
}

class OrderItem {
    String orderItemId;
    int qty;

    OrderItem({
        required this.orderItemId,
        required this.qty,
    });

    factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        orderItemId: json["orderItemId"],
        qty: json["qty"],
    );

    Map<String, dynamic> toJson() => {
        "orderItemId": orderItemId,
        "qty": qty,
    };
}
