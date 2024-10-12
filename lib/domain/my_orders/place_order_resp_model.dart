import 'dart:convert';

PlaceOrderRespModel placeOrderRespModelFromJson(String str) => PlaceOrderRespModel.fromJson(json.decode(str));

String placeOrderRespModelToJson(PlaceOrderRespModel data) => json.encode(data.toJson());

class PlaceOrderRespModel {
    String status;
    List<String> message;
    Data data;

    PlaceOrderRespModel({
        required this.status,
        required this.message,
        required this.data,
    });

    factory PlaceOrderRespModel.fromJson(Map<String, dynamic> json) => PlaceOrderRespModel(
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
    String userId;
    List<OrderItem> orderItems;
    String customerName;
    String customerEmail;
    String contactNumber;
    CustomerAddress customerAddress;
    String status;
    double totalPrice;
    DateTime orderDate;
    int v;
    String orderId;

    Data({
        required this.userId,
        required this.orderItems,
        required this.customerName,
        required this.customerEmail,
        required this.contactNumber,
        required this.customerAddress,
        required this.status,
        required this.totalPrice,
        required this.orderDate,
        required this.v,
        required this.orderId,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        userId: json["userId"],
        orderItems: List<OrderItem>.from(json["orderItems"].map((x) => OrderItem.fromJson(x))),
        customerName: json["customerName"],
        customerEmail: json["customerEmail"],
        contactNumber: json["contactNumber"],
        customerAddress: CustomerAddress.fromJson(json["customerAddress"]),
        status: json["status"],
        totalPrice: json["totalPrice"]?.toDouble(),
        orderDate: DateTime.parse(json["orderDate"]),
        v: json["__v"],
        orderId: json["orderId"],
    );

    Map<String, dynamic> toJson() => {
        "userId": userId,
        "orderItems": List<dynamic>.from(orderItems.map((x) => x.toJson())),
        "customerName": customerName,
        "customerEmail": customerEmail,
        "contactNumber": contactNumber,
        "customerAddress": customerAddress.toJson(),
        "status": status,
        "totalPrice": totalPrice,
        "orderDate": orderDate.toIso8601String(),
        "__v": v,
        "orderId": orderId,
    };
}

class CustomerAddress {
    String addressId;
    String type;
    String pincode;
    String flat;
    String area;
    String landmark;

    CustomerAddress({
        required this.addressId,
        required this.type,
        required this.pincode,
        required this.flat,
        required this.area,
        required this.landmark,
    });

    factory CustomerAddress.fromJson(Map<String, dynamic> json) => CustomerAddress(
        addressId: json["addressId"],
        type: json["type"],
        pincode: json["pincode"],
        flat: json["flat"],
        area: json["area"],
        landmark: json["landmark"],
    );

    Map<String, dynamic> toJson() => {
        "addressId": addressId,
        "type": type,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
    };
}

class OrderItem {
    String orderItemId;
    int qty;
    double pricePerItem;

    OrderItem({
        required this.orderItemId,
        required this.qty,
        required this.pricePerItem,
    });

    factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
        orderItemId: json["orderItemId"],
        qty: json["qty"],
        pricePerItem: json["pricePerItem"]?.toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "orderItemId": orderItemId,
        "qty": qty,
        "pricePerItem": pricePerItem,
    };
}
