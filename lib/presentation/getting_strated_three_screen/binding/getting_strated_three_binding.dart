import '../controller/getting_strated_three_controller.dart';
import 'package:get/get.dart';

/// A binding class for the GettingStratedThreeScreen.
///
/// This class ensures that the GettingStratedThreeController is created when the
/// GettingStratedThreeScreen is first loaded.
class GettingStratedThreeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GettingStratedThreeController());
  }
}
