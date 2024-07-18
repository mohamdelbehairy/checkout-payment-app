import 'card.dart';
import 'patment_intent_model.dart';

class PaymentMethodOptions {
  Card? card;
  Link? link;

  PaymentMethodOptions({this.card, this.link});

  PaymentMethodOptions.fromJson(Map<String, dynamic> json) {
    card = json["card"] == null ? null : Card.fromJson(json["card"]);
    link = json["link"] == null ? null : Link.fromJson(json["link"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if(card != null) {
      data["card"] = card?.toJson();
    }
    if(link != null) {
      data["link"] = link?.toJson();
    }
    return data;
  }
}