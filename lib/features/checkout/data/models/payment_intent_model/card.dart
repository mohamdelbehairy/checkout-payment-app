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
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["installments"] = installments;
    _data["mandate_options"] = mandateOptions;
    _data["network"] = network;
    _data["request_three_d_secure"] = requestThreeDSecure;
    return _data;
  }
}