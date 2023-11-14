import '../controller/new_order_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NewOrderScreen.
///
/// This class ensures that the NewOrderController is created when the
/// NewOrderScreen is first loaded.
class NewOrderBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NewOrderController());
  }
}
