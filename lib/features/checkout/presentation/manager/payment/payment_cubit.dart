import 'dart:developer';

import 'package:checkout_payment_ui/features/checkout/data/models/payment_intent_input_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/checkout_repo.dart';

part 'payment_state.dart';

class PaymentCubit extends Cubit<PaymentState> {
  PaymentCubit(this.checkoutRepo) : super(PaymentInitial());
  final CheckoutRepo checkoutRepo;

  Future<void> makePayment(
      {required PaymentIntentInputModel paymentIntentInputModel}) async {
    emit(PaymentLoading());

    var data = await checkoutRepo.makePayment(
        paymentIntentInputModel: paymentIntentInputModel);

    data.fold(
      (l) {
        emit(PaymentFailure(errorMessage: l.errorMessage));
        log(l.errorMessage);
      },
      (r) => emit(
        PaymentSuccess(),
      ),
    );
  }

  @override
  void onChange(Change<PaymentState> change) {
    log('change: $change');
    super.onChange(change);
  }
}
