import 'tip.dart';

class AmountDetails {
  Tip? tip;

  AmountDetails({this.tip});

  AmountDetails.fromJson(Map<String, dynamic> json) {
    tip = json["tip"] == null ? null : Tip.fromJson(json["tip"]);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if(tip != null) {
      data["tip"] = tip?.toJson();
    }
    return data;
  }
}