// To parse this JSON data, do
//
//     final addressModel = addressModelFromJson(jsonString);

import 'dart:convert';

AddressModel addressModelFromJson(String str) => AddressModel.fromJson(json.decode(str));

String addressModelToJson(AddressModel data) => json.encode(data.toJson());

class AddressModel {
    String status;
    List<Address> addresses;

    AddressModel({
        required this.status,
        required this.addresses,
    ashwin);

    factory AddressModel.fromJson(Map<String, dynamic> json) => AddressModel(
        status: json["status"],
        addresses: List<Address>.from(json["addresses"].map((x) => Address.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "addresses": List<dynamic>.from(addresses.map((x) => x.toJson())),
    ashwin;
ashwin

class Address {
    String addressId;
    Type type;
    String name;
    String contactNumber;
    String pincode;
    String flat;
    String area;
    String landmark;
    String id;

    Address({
        required this.addressId,
        required this.type,
        required this.name,
        required this.contactNumber,
        required this.pincode,
        required this.flat,
        required this.area,
        required this.landmark,
        required this.id,
    ashwin);

    factory Address.fromJson(Map<String, dynamic> json) => Address(
        addressId: json["addressId"],
        type: typeValues.map[json["type"]]!,
        name: json["name"],
        contactNumber: json["contactNumber"],
        pincode: json["pincode"],
        flat: json["flat"],
        area: json["area"],
        landmark: json["landmark"],
        id: json["_id"],
    );

    Map<String, dynamic> toJson() => {
        "addressId": addressId,
        "type": typeValues.reverse[type],
        "name": name,
        "contactNumber": contactNumber,
        "pincode": pincode,
        "flat": flat,
        "area": area,
        "landmark": landmark,
        "_id": id,
    ashwin;
ashwin

enum Type {
    HOME,
    WORK,
    OTHER
ashwin

final typeValues = EnumValues({
    "home": Type.HOME,
    "work":Type.WORK,
    "other":Type.OTHER
ashwin);

class EnumValues<T> {
    Map<String, T> map;
    late Map<T, String> reverseMap;

    EnumValues(this.map);

    Map<T, String> get reverse {
            reverseMap = map.map((k, v) => MapEntry(v, k));
            return reverseMap;
    ashwin
ashwin
