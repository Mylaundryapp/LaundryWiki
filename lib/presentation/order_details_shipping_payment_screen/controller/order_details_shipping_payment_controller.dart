import 'package:mylaundryapp/core/app_export.dart';
import 'package:mylaundryapp/presentation/order_details_shipping_payment_screen/models/order_details_shipping_payment_model.dart';

/// A controller class for the OrderDetailsShippingPaymentScreen.
///
/// This class manages the state of the OrderDetailsShippingPaymentScreen, including the
/// current orderDetailsShippingPaymentModelObj
class OrderDetailsShippingPaymentController extends GetxController {
  Rx<OrderDetailsShippingPaymentModel> orderDetailsShippingPaymentModelObj =
      OrderDetailsShippingPaymentModel().obs;

  Rx<String> radioGroup = "".obs;

  Rx<String> radioGroup1 = "".obs;
}
