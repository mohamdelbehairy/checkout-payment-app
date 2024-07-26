class AmountModel {
  String? total;
  String? currency;
  Details? details;

  AmountModel({this.total, this.currency, this.details});

  AmountModel.fromJson(Map<String, dynamic> json) {
    if(json["total"] is String) {
      total = json["total"];
    }
    if(json["currency"] is String) {
      currency = json["currency"];
    }
    if(json["details"] is Map) {
      details = json["details"] == null ? null : Details.fromJson(json["details"]);
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["total"] = total;
    data["currency"] = currency;
    if(details != null) {
      data["details"] = details?.toJson();
    }
    return data;
  }
}

class Details {
  String? subtotal;
  String? shipping;
  int? shippingDiscount;

  Details({this.subtotal, this.shipping, this.shippingDiscount});

  Details.fromJson(Map<String, dynamic> json) {
    if(json["subtotal"] is String) {
      subtotal = json["subtotal"];
    }
    if(json["shipping"] is String) {
      shipping = json["shipping"];
    }
    if(json["shipping_discount"] is int) {
      shippingDiscount = json["shipping_discount"];
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["subtotal"] = subtotal;
    data["shipping"] = shipping;
    data["shipping_discount"] = shippingDiscount;
    return data;
  }
}