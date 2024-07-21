class Card {
  dynamic installments;
  dynamic mandateOptions;
  dynamic network;
  String? requestThreeDSecure;

  Card({this.installments, this.mandateOptions, this.network, this.requestThreeDSecure});

  Card.fromJson(Map<String, dynamic> json) {
    installments = json["installments"];
    mandateOptions = json["mandate_options"];
    network = json["network"];
    requestThreeDSecure = json["request_three_d_secure"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["installments"] = installments;
    data["mandate_options"] = mandateOptions;
    data["network"] = network;
    data["request_three_d_secure"] = requestThreeDSecure;
    return data;
  }
}