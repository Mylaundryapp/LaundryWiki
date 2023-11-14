import '../controller/manage_addresses_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ManageAddressesScreen.
///
/// This class ensures that the ManageAddressesController is created when the
/// ManageAddressesScreen is first loaded.
class ManageAddressesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ManageAddressesController());
  }
}
