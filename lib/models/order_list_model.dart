import 'dart:convert';

OrderListModel orderListModelFromJson(String str) =>
    OrderListModel.fromJson(json.decode(str));

String orderListModelToJson(OrderListModel data) => json.encode(data.toJson());

class OrderListModel {
  OrderListModel({
    required this.data,
  });

  List<Datum> data;

  factory OrderListModel.fromJson(Map<String, dynamic> json) => OrderListModel(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.tableName,
    required this.time,
    required this.dished,
    required this.kot,
    required this.items,
  });

  String tableName;
  String time;
  int dished;
  int kot;
  List<Item> items;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        tableName: json["table_name"],
        time: json["time"],
        dished: json["dished"],
        kot: json["kot"],
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "table_name": tableName,
        "time": time,
        "dished": dished,
        "kot": kot,
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class Item {
  Item({
    required this.name,
    required this.quanity,
  });

  String name;
  int quanity;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        name: json["name"],
        quanity: json["quanity"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "quanity": quanity,
      };
}
