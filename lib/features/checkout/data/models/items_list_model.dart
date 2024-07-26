class OrderItemModel {
  String? name;
  int? quantity;
  String? price;
  String? currency;

  OrderItemModel({this.name, this.quantity, this.price, this.currency});

  OrderItemModel.fromJson(Map<String, dynamic> json) {
    if (json["name"] is String) {
      name = json["name"];
    }
    if (json["quantity"] is int) {
      quantity = json["quantity"];
    }
    if (json["price"] is String) {
      price = json["price"];
    }
    if (json["currency"] is String) {
      currency = json["currency"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["name"] = name;
    data["quantity"] = quantity;
    data["price"] = price;
    data["currency"] = currency;
    return data;
  }
}

class ItemListModel {
  List<OrderItemModel>? orders;

  ItemListModel({this.orders});

  ItemListModel.fromJson(Map<String, dynamic> json) {
    if (json["items"] is List) {
      orders = json["items"] == null
          ? null
          : (json["items"] as List)
              .map((e) => OrderItemModel.fromJson(e))
              .toList();
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (orders != null) {
      data["items"] = orders?.map((e) => e.toJson()).toList();
    }
    return data;
  }
}
