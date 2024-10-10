import 'dart:convert';

PlaceOrderRequestModel placeOrderRequestModelFromJson(String str) => PlaceOrderRequestModel.fromJson(json.decode(str));

String placeOrderRequestModelToJson(PlaceOrderRequestModel data) => json.encode(data.toJson());

class PlaceOrderRequestModel {
    String token;
    List<OrderItem> orderItems;
    String addressId;

    PlaceOrderRequestModel({
        required this.token,
        required this.orderItems,
        required this.addressId,
    });

    factory PlaceOrderRequestModel.fromJson(Map<String, dynamic> json) => PlaceOrderRequestModel(
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
