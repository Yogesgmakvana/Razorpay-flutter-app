import 'package:razorpay_flutter/razorpay_flutter.dart';

class PaymentService {
  late Razorpay _razorpay;

  void init() {
    _razorpay = Razorpay();

    _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handleSuccess);
    _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handleError);
    _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleWallet);
  }

  void openCheckout() {
    var options = {
      'key': ' ',                        //add Your own Api key 
      'amount': 50000,
      'name': 'Makwana Auto Care',
      'description': 'Service Booking',
      'prefill': {
        'contact': '9999999999',
        'email': 'test@gmail.com'
      }
    };

    _razorpay.open(options);
  }

  void handleSuccess(PaymentSuccessResponse response) {
    print("Payment Success: ${response.paymentId}");
  }

  void handleError(PaymentFailureResponse response) {
    print("Payment Failed");
  }

  void handleWallet(ExternalWalletResponse response) {
    print("Wallet Selected");
  }

  void dispose() {
    _razorpay.clear();
  }
}