// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'upcomming_order_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UpcommingOrderRespModelImpl _$$UpcommingOrderRespModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UpcommingOrderRespModelImpl(
      status: json['status'] as String,
      message:
          (json['message'] as List<dynamic>).map((e) => e as String).toList(),
      data: (json['data'] as List<dynamic>)
          .map((e) => OrderData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UpcommingOrderRespModelImplToJson(
        _$UpcommingOrderRespModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
    };

_$OrderDataImpl _$$OrderDataImplFromJson(Map<String, dynamic> json) =>
    _$OrderDataImpl(
      userId: json['userId'] as String,
      orderItems: (json['orderItems'] as List<dynamic>)
          .map((e) => OrderItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      customerName: json['customerName'] as String,
      customerEmail: json['customerEmail'] as String,
      contactNumber: json['contactNumber'] as String,
      customerAddress:
          Address.fromJson(json['customerAddress'] as Map<String, dynamic>),
      status: json['status'] as String,
      totalPrice: (json['totalPrice'] as num).toDouble(),
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$$OrderDataImplToJson(_$OrderDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'orderItems': instance.orderItems,
      'customerName': instance.customerName,
      'customerEmail': instance.customerEmail,
      'contactNumber': instance.contactNumber,
      'customerAddress': instance.customerAddress,
      'status': instance.status,
      'totalPrice': instance.totalPrice,
      'orderId': instance.orderId,
    };

_$OrderItemImpl _$$OrderItemImplFromJson(Map<String, dynamic> json) =>
    _$OrderItemImpl(
      orderItemId: json['orderItemId'] as String,
      name: json['name'] as String,
      qty: (json['qty'] as num).toInt(),
      pricePerItem: (json['pricePerItem'] as num).toDouble(),
    );

Map<String, dynamic> _$$OrderItemImplToJson(_$OrderItemImpl instance) =>
    <String, dynamic>{
      'orderItemId': instance.orderItemId,
      'name': instance.name,
      'qty': instance.qty,
      'pricePerItem': instance.pricePerItem,
    };

_$AddressImpl _$$AddressImplFromJson(Map<String, dynamic> json) =>
    _$AddressImpl(
      addressId: json['addressId'] as String,
      type: json['type'] as String,
      pincode: json['pincode'] as String,
      flat: json['flat'] as String,
      area: json['area'] as String,
      landmark: json['landmark'] as String,
    );

Map<String, dynamic> _$$AddressImplToJson(_$AddressImpl instance) =>
    <String, dynamic>{
      'addressId': instance.addressId,
      'type': instance.type,
      'pincode': instance.pincode,
      'flat': instance.flat,
      'area': instance.area,
      'landmark': instance.landmark,
    };
