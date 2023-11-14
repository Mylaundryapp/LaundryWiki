import '../controller/verifyotp_controller.dart';
import 'package:get/get.dart';

/// A binding class for the VerifyotpScreen.
///
/// This class ensures that the VerifyotpController is created when the
/// VerifyotpScreen is first loaded.
class VerifyotpBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => VerifyotpController());
  }
}
