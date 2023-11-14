import '../controller/save_address_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SaveAddressScreen.
///
/// This class ensures that the SaveAddressController is created when the
/// SaveAddressScreen is first loaded.
class SaveAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SaveAddressController());
  }
}
