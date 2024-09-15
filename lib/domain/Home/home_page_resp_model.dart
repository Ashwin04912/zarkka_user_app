import 'dart:convert';

HomePageRespModel homePageRespModelFromJson(String str) => HomePageRespModel.fromJson(json.decode(str));

String homePageRespModelToJson(HomePageRespModel data) => json.encode(data.toJson());

class HomePageRespModel {
    String status;
    List<Item> items;

    HomePageRespModel({
        required this.status,
        required this.items,
    });

    factory HomePageRespModel.fromJson(Map<String, dynamic> json) => HomePageRespModel(
        status: json["status"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
    };
}

class Item {
    String name;
    List<String> images;
    String category;

    Item({
        required this.name,
        required this.images,
        required this.category,
    });

    factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        images: List<String>.from(json["images"].map((x) => x)),
        category: json["category"],
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "images": List<dynamic>.from(images.map((x) => x)),
        "category": category,
    };
}
//