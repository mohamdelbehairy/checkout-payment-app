import 'amount_details.dart';
import 'automatic_payment_method.dart';
import 'metadata.dart';
import 'payment_method_options.dart';

class PatmentIntentModel {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  Metadata? metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptions? paymentMethodOptions;
  List<String>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  PatmentIntentModel(
      {this.id,
      this.object,
      this.amount,
      this.amountCapturable,
      this.amountDetails,
      this.amountReceived,
      this.application,
      this.applicationFeeAmount,
      this.automaticPaymentMethods,
      this.canceledAt,
      this.cancellationReason,
      this.captureMethod,
      this.clientSecret,
      this.confirmationMethod,
      this.created,
      this.currency,
      this.customer,
      this.description,
      this.invoice,
      this.lastPaymentError,
      this.latestCharge,
      this.livemode,
      this.metadata,
      this.nextAction,
      this.onBehalfOf,
      this.paymentMethod,
      this.paymentMethodOptions,
      this.paymentMethodTypes,
      this.processing,
      this.receiptEmail,
      this.review,
      this.setupFutureUsage,
      this.shipping,
      this.source,
      this.statementDescriptor,
      this.statementDescriptorSuffix,
      this.status,
      this.transferData,
      this.transferGroup});

  PatmentIntentModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    object = json["object"];
    amount = json["amount"];
    amountCapturable = json["amount_capturable"];
    amountDetails = json["amount_details"] == null
        ? null
        : AmountDetails.fromJson(json["amount_details"]);
    amountReceived = json["amount_received"];
    application = json["application"];
    applicationFeeAmount = json["application_fee_amount"];
    automaticPaymentMethods = json["automatic_payment_methods"] == null
        ? null
        : AutomaticPaymentMethods.fromJson(json["automatic_payment_methods"]);
    canceledAt = json["canceled_at"];
    cancellationReason = json["cancellation_reason"];
    captureMethod = json["capture_method"];
    clientSecret = json["client_secret"];
    confirmationMethod = json["confirmation_method"];
    created = json["created"];
    currency = json["currency"];
    customer = json["customer"];
    description = json["description"];
    invoice = json["invoice"];
    lastPaymentError = json["last_payment_error"];
    latestCharge = json["latest_charge"];
    livemode = json["livemode"];
    metadata =
        json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]);
    nextAction = json["next_action"];
    onBehalfOf = json["on_behalf_of"];
    paymentMethod = json["payment_method"];
    paymentMethodOptions = json["payment_method_options"] == null
        ? null
        : PaymentMethodOptions.fromJson(json["payment_method_options"]);
    paymentMethodTypes = json["payment_method_types"] == null
        ? null
        : List<String>.from(json["payment_method_types"]);
    processing = json["processing"];
    receiptEmail = json["receipt_email"];
    review = json["review"];
    setupFutureUsage = json["setup_future_usage"];
    shipping = json["shipping"];
    source = json["source"];
    statementDescriptor = json["statement_descriptor"];
    statementDescriptorSuffix = json["statement_descriptor_suffix"];
    status = json["status"];
    transferData = json["transfer_data"];
    transferGroup = json["transfer_group"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["id"] = id;
    data["object"] = object;
    data["amount"] = amount;
    data["amount_capturable"] = amountCapturable;
    if (amountDetails != null) {
      data["amount_details"] = amountDetails?.toJson();
    }
    data["amount_received"] = amountReceived;
    data["application"] = application;
    data["application_fee_amount"] = applicationFeeAmount;
    if (automaticPaymentMethods != null) {
      data["automatic_payment_methods"] = automaticPaymentMethods?.toJson();
    }
    data["canceled_at"] = canceledAt;
    data["cancellation_reason"] = cancellationReason;
    data["capture_method"] = captureMethod;
    data["client_secret"] = clientSecret;
    data["confirmation_method"] = confirmationMethod;
    data["created"] = created;
    data["currency"] = currency;
    data["customer"] = customer;
    data["description"] = description;
    data["invoice"] = invoice;
    data["last_payment_error"] = lastPaymentError;
    data["latest_charge"] = latestCharge;
    data["livemode"] = livemode;
    if (metadata != null) {
      data["metadata"] = metadata?.toJson();
    }
    data["next_action"] = nextAction;
    data["on_behalf_of"] = onBehalfOf;
    data["payment_method"] = paymentMethod;
    if (paymentMethodOptions != null) {
      data["payment_method_options"] = paymentMethodOptions?.toJson();
    }
    if (paymentMethodTypes != null) {
      data["payment_method_types"] = paymentMethodTypes;
    }
    data["processing"] = processing;
    data["receipt_email"] = receiptEmail;
    data["review"] = review;
    data["setup_future_usage"] = setupFutureUsage;
    data["shipping"] = shipping;
    data["source"] = source;
    data["statement_descriptor"] = statementDescriptor;
    data["statement_descriptor_suffix"] = statementDescriptorSuffix;
    data["status"] = status;
    data["transfer_data"] = transferData;
    data["transfer_group"] = transferGroup;
    return data;
  }
}

class Link {
  dynamic persistentToken;

  Link({this.persistentToken});

  Link.fromJson(Map<String, dynamic> json) {
    persistentToken = json["persistent_token"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data["persistent_token"] = persistentToken;
    return data;
  }
}





