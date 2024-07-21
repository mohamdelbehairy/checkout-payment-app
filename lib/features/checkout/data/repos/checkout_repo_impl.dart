import 'package:checkout_payment_ui/core/errors/failures.dart';
import 'package:checkout_payment_ui/core/utils/strip_service.dart';
import 'package:checkout_payment_ui/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:checkout_payment_ui/features/checkout/data/repos/checkout_repo.dart';
import 'package:dartz/dartz.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripService stripService = StripService();
  @override
  Future<Either<Failure, void>> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    try {
      await stripService.makePayment(
          paymentIntentInputModel: paymentIntentInputModel);
      return right(null);
    } catch (e) {
      return left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
