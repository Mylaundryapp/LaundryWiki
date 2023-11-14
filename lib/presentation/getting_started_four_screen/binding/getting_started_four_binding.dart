import '../controller/getting_started_four_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GettingStartedFourScreen.
///
/// This class ensures that the GettingStartedFourController is created when the
/// GettingStartedFourScreen is first loaded.
class GettingStartedFourBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GettingStartedFourController());
  }
}
