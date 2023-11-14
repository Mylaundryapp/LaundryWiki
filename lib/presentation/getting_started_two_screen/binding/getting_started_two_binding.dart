import '../controller/getting_started_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GettingStartedTwoScreen.
///
/// This class ensures that the GettingStartedTwoController is created when the
/// GettingStartedTwoScreen is first loaded.
class GettingStartedTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GettingStartedTwoController());
  }
}
