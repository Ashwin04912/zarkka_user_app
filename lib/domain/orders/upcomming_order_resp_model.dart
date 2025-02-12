import 'package:freezed_annotation/freezed_annotation.dart';

part 'upcomming_order_resp_model.freezed.dart';
part 'upcomming_order_resp_model.g.dart';

@freezed
class UpcommingOrderRespModel with _$UpcommingOrderRespModel {
  const factory UpcommingOrderRespModel({
    required String status,
    required List<String> message,
    required List<OrderData> data,
  }) = _UpcommingOrderRespModel;

  factory UpcommingOrderRespModel.fromJson(Map<String, dynamic> json) =>
      _$UpcommingOrderRespModelFromJson(json);
}

@freezed
class OrderData with _$OrderData {
  const factory OrderData({
    required String userId,
    required List<OrderItem> orderItems,
    required String customerName,
    required String customerEmail,
    required String contactNumber,
    required Address customerAddress,
    required String status,
    required double totalPrice,
    required String orderId,
  }) = _OrderData;

  factory OrderData.fromJson(Map<String, dynamic> json) =>
      _$OrderDataFromJson(json);
}

@freezed
class OrderItem with _$OrderItem {
  const factory OrderItem({
    required String orderItemId,
    required String name,
    required int qty,
    required double pricePerItem,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);
}

@freezed
class Address with _$Address {
  const factory Address({
    required String addressId,
    required String type,
    required String pincode,
    required String flat,
    required String area,
    required String landmark,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}
