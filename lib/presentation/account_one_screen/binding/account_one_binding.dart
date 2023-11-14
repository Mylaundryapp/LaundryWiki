import '../controller/account_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the AccountOneScreen.
///
/// This class ensures that the AccountOneController is created when the
/// AccountOneScreen is first loaded.
class AccountOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AccountOneController());
  }
}
