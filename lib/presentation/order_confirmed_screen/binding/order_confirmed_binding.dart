import '../controller/order_confirmed_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrderConfirmedScreen.
///
/// This class ensures that the OrderConfirmedController is created when the
/// OrderConfirmedScreen is first loaded.
class OrderConfirmedBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrderConfirmedController());
  }
}
