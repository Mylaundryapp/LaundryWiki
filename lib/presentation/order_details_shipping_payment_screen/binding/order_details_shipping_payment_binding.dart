import '../controller/order_details_shipping_payment_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderDetailsShippingPaymentScreen.
///
/// This class ensures that the OrderDetailsShippingPaymentController is created when the
/// OrderDetailsShippingPaymentScreen is first loaded.
class OrderDetailsShippingPaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderDetailsShippingPaymentController());
  }
}
